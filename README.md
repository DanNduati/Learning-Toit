<h1 align="center"><b>Toit
</b></h1>

<h3 align="center">Cloud-managed containers on the ESP32</h3>

[Toit](https://toit.io/) is an open source, object-oriented programming language for the Internet of Things. 

## Developing with toit
### 1. [Signup](https://toit.io/)
### 2. Provision the esp32
Your ESP32 must be initially installed with the Toit firmware, before you can benefit from the Toit platform and all the features available.
```bash
toit serial provision -p wifi.ssid="ssid" -p wifi.password="password"
```
### 3. Claiming
Toit devices must be claimed in order to be visible in the Devices list in the [Toit console](https://console.toit.io/devices).The ESP32 must be connected to the internet via WiFi before you can claim it into your Toit project.
```bash
toit device claim 384a9843-cdb8-4dc6-970a-030fb8148068
```
#### Check device info
```bash
toit serial info -o yaml
```
output
```bash
hardware_id: 04d2027d-3ef8-436e-9716-3150f0b10733
model: esp32-4mb
name: 04d2027d-3ef8-436e-9716-3150f0b10733.611.2021-09-26.device.toitware.com
```
When claiming succeeds, the device can be viewed in the [list of devices](https://console.toit.io/devices).

## Apps
## Jaguar
## Useful links
- [Toit docs](https://docs.toit.io/)
- [Github](https://github.com/toitlang/toit)
- [Standard-libraries](https://libs.toit.io/)
- [espressif-Toit](https://www.espressif.com/en/news/ESP_Toit)


## Gotchas I encountered
I was unable to run scripts with the `--no-device` flag which seems to be an [issue](https://github.com/toitlang/toit/issues/434) the team is patching.