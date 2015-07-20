/* encoding: UTF-8, break: linux, indet-mode: 4 spaces, lang: C90/eng/xc8 */
/* Written on 20 Jul 2015 by con-f-use (-> gmx.net) */
/******************************************************************************
 * Firmware for a PIC10F200/202/204/206 on the usbpicresetter board.
 * Intended to cut power to an USB device every 30 min for half a second.
******************************************************************************/

#include <xc.h>

#pragma config WDTE  = ON   // Watchdog Timer (WDT enabled)
#pragma config CP    = OFF   // Code Protect (Code protection off)
#pragma config MCLRE = OFF   // Master Clear Enable (GP3/MCLR pin fuction is digital I/O, MCLR internally tied to VDD)
#define _XTAL_FREQ 40000000

#define DEFAULT_OPTION ( 0 \
        |  nGPWU /* 7: no wake-up on pin change */ \
        |  nGPPU /* 6: no weak pullups */ \
        | ~T0CS  /* 5: internal clock */ \
        | ~T0SE  /* 4: incremnt low to high */ \
        |  PSA   /* 3: prescale on wdt (Timer0 if cleared) */ )
#define WDT_2S    (PS2 | PS1 | PS0) // clock division by 128 (256 for Timer0)
#define WDT_500MS (PS2 | PS0)       // clock division by  32

//=============================================================================

#define SLEEPHB GP1 = 1; __delay_ms(50); GP1 = 0; SLEEP() // sleep with heartbeat

void main(void) {
    int slpC = 0; // sleep counter
    //CLRWDT();
    OPTION = DEFAULT_OPTION | WDT_2S;
    OSCCAL &= ~(FOSC4);    // no clock output on GP2
    TRISGPIO = 0b00000001; // set GP0-2 to out, all other input
    GP2 = GP1 = GP0 = 0;   // set outputs low
    SLEEP();   // datasheet -> about 2.3s sleep at max prescale
    //CLRWDT();

    while(1) {
        GP2 = 1;
        OPTION = DEFAULT_OPTION | WDT_500MS;
        SLEEP();
        OPTION = DEFAULT_OPTION | WDT_2S;
        GP2 = 0;
        //CLRWDT();
        for(slpC=0; slpC<196; ++slpC) { SLEEPHB; SLEEPHB; SLEEPHB; SLEEPHB; }
    }
}
