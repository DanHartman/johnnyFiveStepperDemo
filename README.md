# Just a Johnny Five Demonstration

Very simple interface to demonstrate how johnny five can control some otherwise complex devices in the embedded world.  

Goals:
*

This willModels a NextThingCo "Chip" single board computer, an arduino nano for low level interface, and a stepper motor.

3D Printed Mount is created.

Simple johnny-five code is written to display how to use the stepper.

* `flash chip with fresh install of nogui`
* Disconnect from power and then connect to USB port
* `login with screen /dev/ttyACM0`
* default user `chip` default password `chip`
* `sudo nmtui` follow onscreen commands to get device online to be provisioned.
* `ssh chip@ip.of.chip.sbc` to make sure RSA key fingerprint is accepted.
* Because chip firmware doesn't include python this is a chance to separate installing it and add our personal user to the machine.  This task should only be run once.  `ansible-playbook -i ip.of.chip.sbc, -u chip -k --ask-become-pass deploy/ansible/user.yml`
* This will actually provision the box.  This task ought to be idempotent.`ansible-playbook -i ip.of.chip.sbc, --ask-become-pass deploy/ansible/provision.yml`
* `sudo reboot`
