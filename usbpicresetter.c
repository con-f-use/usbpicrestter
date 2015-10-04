/* encoding: UTF-8, break: linux, indet-mode: 4 spaces, lang: C90/eng/xc8 */
/* Written on 20 Jul 2015 by con-f-use (-> gmx.net) */
/******************************************************************************
 * Firmware for a PIC10F200/202/204/206 on the usbpicresetter board.
 * Intended to cut power to an USB device every 30 min for half a second.
******************************************************************************/

#include <xc.h>

#pragma config CP    = OFF   // Code protection off
#pragma config MCLRE = OFF   // Master Clear Enable (GP3/MCLR pin fuction is digital I/O, MCLR internally tied to VDD)
#pragma config WDTE  = OFF   // Watchdog Timer (WDT disabled)
#define _XTAL_FREQ 4000000
#define DEFAULT_OPTION ( 0 \
        |  nGPWU /* 7: no wake-up on pin change */ \
        |  nGPPU /* 6: no weak pullups */ \
        & ~T0CS  /* 5: internal clock */ \
        & ~T0SE  /* 4: incremnt low to high */ \
        |  PSA   /* 3: prescale for wdt (Timer0 if bit cleared) */ )
#define WDT_2S    (PS2 | PS1 | PS0) // clock division by 128 (256 for Timer0)
#define WDT_500MS (PS2 | PS0)       // clock division by  32

void delay_s(long int s) {
    for(s=s; s>0; --s) {
        __delay_ms(900);
        GP0 = 1;   __delay_ms(100);   GP0 = 0; // heartbeat
    }
}

void main(void) {
    OPTION = DEFAULT_OPTION | WDT_2S;
    OSCCAL &= ~(FOSC4);            // no clock output on GP2
    TRISGPIO = 0b00000000;         // set all to out
    GP0 = 0;   GP1 = 0;   GP2 = 0; // set all low

    while(1) {
        GP2 = 1;   __delay_ms(500);
        GP2 = 0;   delay_s(30l*60l); // wait about 30 minutes
    }
}

