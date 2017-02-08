# Just a Johnny Five Demonstration

Very simple interface to demonstrate how johnny five can control some otherwise complex devices in the embedded world.  

Goals:
*

This willModels a NextThingCo "Chip" single board computer, an arduino nano for low level interface, and a stepper motor.

3D Printed Mount is created.

Simple johnny-five code is written to display how to use the stepper.

`flash chip with fresh install of nogui`
`login with screen /dev/ttyACM0`
`sudo nmtui` follow onscreen commands to get device online to be provisioned.
`ansible-playbook -i ip.of.chip.sbc, -u chip -k --ask-become-pass deploy/ansible/provision.yml`
`ssh ip.of.chip.sbc` && `sudo reboot` for networking to take effect.  Again, this should be done by an ansible handler
