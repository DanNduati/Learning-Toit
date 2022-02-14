import gpio
import gpio.pwm as gpio //this is so confusing look into import later

LED ::= 19
//pwm config
DUTY_MIN ::= 0.0
DUTY_MAX ::= 1.0
CHANGE_RATE ::= 0.01 //amount to change every 5ms

main:
    led_pwm ::= gpio.Pwm --frequency=100
    led := gpio.Pin LED
    fading_led := led_pwm.start led

    step := CHANGE_RATE
    duty := DUTY_MIN

    while true:
        fading_led.set_duty_factor(duty)
        duty+=step
        //print duty
        if not DUTY_MIN <= duty <= DUTY_MAX:
            step = -step
            duty += step
        sleep --ms=5