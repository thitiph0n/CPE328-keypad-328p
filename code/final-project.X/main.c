#define F_CPU 8000000UL
#define SIZE 16
#define BTN_DEBOUCE 20 //ms

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

uint8_t keys[4][4] = {
    {0x37, 0x38, 0x39, 0x41},
    {0x34, 0x35, 0x36, 0x42},
    {0x31, 0x32, 0x33, 0x43},
    {0x2A, 0x30, 0x23, 0x44},
};

volatile char usart_data;
volatile int queue[SIZE];
volatile uint8_t count = 0;
volatile uint8_t pressedKey = 0;
volatile uint8_t holdedKey = 0;

void pin_change_init() {
    PCICR |= (1 << PCIE0);
    PCMSK0 |= (1 << PCINT0) | (1 << PCINT1) | (1 << PCINT2) | (1 << PCINT3);
}

void USART_Init(unsigned int ubrr) {
    /* Set baud rate */
    UBRR0 = ubrr;
    /* Enable receiver and transmitter and enable read interrupt*/
    UCSR0B |= (1 << RXEN0) | (1 << TXEN0) | (1 << RXCIE0);
    /* Set frame format: 8data, 2stop bit */
    UCSR0C |= (1 << UCSZ01) | (1 << UCSZ00);
}

void USART_Transmit(unsigned char data) {
    /* Wait for empty transmit buffer */
    while (!(UCSR0A & (1 << UDRE0)));
    /* Put data into buffer, sends the data */
    UDR0 = data;
}

void USART_Transmit_String(unsigned char s[]) {
    int i = 0;

    while (s[i] != 0x00) {
        USART_Transmit(s[i]);
        i++;
    }

}

unsigned char USART_Receive() {
    /* Wait for data to be received */
    while (!(UCSR0A & (1 << RXC0)));
    /* Get and return received data from buffer */
    return UDR0;
}

void push(uint8_t data) {
    if (count < SIZE) {
        queue[count] = data;
        count++;
    } else {
        uint8_t i = 0;
        for (i = 0; i < SIZE; i++) {
            queue[i] = queue[i + 1];
        }
        queue[15] = data;
    }
}

void send_buffer() {
    uint8_t i;
    unsigned char text[8] = "No data.";
    if (count == 0) {
        for (i = 0; i < 8; i++)
            USART_Transmit(text[i]);
        USART_Transmit(13);
    } else {
        USART_Transmit(13);
        for (i = 0; i < count; i++)
            USART_Transmit(queue[i]);
        USART_Transmit(13);
    }
}


// LED

void TIMER0_Init(uint8_t count, uint8_t dim) {
    TCCR0A |= (1 << COM0B1) | (1 << WGM01) | (1 << WGM00);
    TCCR0B |= (1 << WGM02) | (1 << CS01) | (1 << CS00);
    OCR0A = count;
    OCR0B = dim;
}

void LED() {
    unsigned char level;
    cli();
    level = USART_Receive();
    if (level == '0') {
        TIMER0_Init(31, 0);
    } else if (level == '1') {
        TIMER0_Init(31, 10);
    } else if (level == '2') {
        TIMER0_Init(31, 20);
    } else if (level == '3') {
        TIMER0_Init(31, 31);
    }
    sei();
}

ISR(PCINT0_vect) {
    uint8_t row = 0, column = 0;
    holdedKey = 0;
    for (row = 0; row < 4; row++) {
        for (column = 0; column < 4; column++) {
            if (!((PINB & (1 << row)) | (PINC & (1 << column)))) {

                uint16_t timer = 0;
                while (!(PINB & (1 << row))) {
                    timer++; // count how long button is pressed
                    _delay_ms(1);
                    if (timer > 500UL) {
                        break;
                    }
                };
                if (timer > BTN_DEBOUCE) { // software debouncing button
                    if (timer < 450UL) {//unsigned long
                        //single click
                        push(keys[column][row]);
                        pressedKey = keys[column][row];
                    } else {
                        //button hold
                        push(keys[column][row]);
                        pressedKey = keys[column][row];
                        holdedKey = keys[column][row];
                    }
                }

            }
        }
    }
}

ISR(USART_RX_vect) {
    usart_data = UDR0;
}

int main(void) {

    pin_change_init();
    USART_Init(51);

    DDRB = 0x00;
    DDRC = 0x00;

    DDRD |= (1 << DDD5);
    PORTD &= ~(1 << PORTD5);

    TIMER0_Init(31, 0);

    while (1) {
        sei();
        uint8_t i;
        // Get buffer mode
        if (usart_data == 'b') {
            send_buffer();
            usart_data = '\0';
        }            // Get current key status mode
        else if (usart_data == 's') {
            usart_data = 0;
            while (usart_data != 'q') {
                for (i = 0; i < 4; i++) {
                    DDRC ^= (1 << i);
                    _delay_ms(20);
                    DDRC ^= (1 << i);
                }
                // LED light
                if (usart_data == 'l') {
                    LED();
                }
                
                //Send 'q' to exit to default mode
                if (usart_data != 0 && usart_data != 'q') {
                    
                    if (usart_data == pressedKey) {
                        USART_Transmit('p');
                    } else {
                        USART_Transmit('r');
                    }
                    usart_data = 0;
                }
                if (holdedKey != -1) {
                    pressedKey = 0;
                }
            }
            pressedKey = 0;
            usart_data = '\0';
        }   
        //LED light
        else if (usart_data == 'l') {
            LED();
            usart_data = '\0';
        }            
        // Default mode
        else {

            //Transmit to USART
            if (pressedKey != 0 && holdedKey == 0) {
                USART_Transmit(pressedKey);
            }
            pressedKey = 0;

            //Loop matrix button
            for (i = 0; i < 4; i++) {
                DDRC ^= (1 << i);
                _delay_ms(10);
                DDRC ^= (1 << i);
            }
        }

    }
}