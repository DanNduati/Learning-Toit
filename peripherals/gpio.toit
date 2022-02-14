//GPIO Pin class is exposed by the gpio module.
import gpio
main:
    pin := gpio.Pin 21 --output
    pin.set 1
    sleep --ms=1000 //keep the led turned on for 1000ms
    // When the program terminates, the pin will automatically be reset thus turning off the LED.