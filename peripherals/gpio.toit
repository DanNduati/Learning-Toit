//GPIO Pin class is exposed by the gpio module.
import gpio
LED ::= 21
main:
    led := gpio.Pin LED --output
    while true:
        print "Blink"
        led.set 1
        sleep --ms=1000 //keep the led turned on for 1000ms
        led.set 0
        sleep --ms=1000