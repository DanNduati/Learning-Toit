import gpio

BUTTON ::= 21

main:
    button := gpio.Pin BUTTON --input
    while true:
        button.wait_for 1
        print "Button pressed"
        sleep --ms=100 // delay debounce
        button.wait_for 0
        sleep --ms=100