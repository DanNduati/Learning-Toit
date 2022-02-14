<h1 align="center"><b>Toit
</b></h1>

<h3 align="center">Cloud-managed containers on the ESP32</h3>

[Toit](https://toit.io/) is an open source, object-oriented programming language for the Internet of Things. 

## Developing with toit
### 1. [Signup](https://auth.toit.io/signup)
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
When claiming succeeds, the device can be viewed in the [list of devices](https://console.toit.io/devices).
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
### 4. Configuration
See the list of available commands with
```bash
toit device config -h
```
Set your current device as the default device in all toit device commands with
```bash
toit device use device-name
```
Two default configurations:
1. Max offline

By default, the device is configured to be continuously online (with 'Max offline' set to zero seconds). If your device operates on battery in production, it is recommended to change this configuration so that the device is online only when necessary to extend battery life.
```bash
toit device config max-offline duration
```
where duration is replaced by the preferred duration, such as 10s, 30m, 1h or similar.

2. firmware version

Update the firmware on your device to the latest version with:
```bash
toit device update
```
3. Connections

```bash
toit device config connection -c wifi:"MY_SSID":"MY_WiFiPassword"
```


## Apps
### Running programs
This option makes it easy to quickly execute Toit code `once` on a device. The device needs to be online since the installation and execution of the code happen synchronously such that you get feedback right away.

```bash
toit device -d MyDevice run MyToitProgram.toit
```
Running a program on a device does not allow the device to go into deep sleep since it needs to remain online for the program to run, even if it is set to make a measurement only once a day. Therefore this method of executing code is great for running small snippets of code on a device but not built for running actual long-lived applications.

### Specification

## Jaguar

## Useful links
- [Toit docs](https://docs.toit.io/)
- [Github](https://github.com/toitlang/toit)
- [Standard-libraries](https://libs.toit.io/)
- [espressif-Toit](https://www.espressif.com/en/news/ESP_Toit)
- [Toit-drivers](https://docs.toit.io/peripherals/drivers/driverslist)

## Gotchas I encountered
I was unable to run scripts with the `--no-device` flag which seems to be an [issue](https://github.com/toitlang/toit/issues/434) the team is patching.