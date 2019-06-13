# rfid-door-node-red
A complete Node Red Web Control to monitor &amp; control multiple rfid-door hardware devices

This is a complete Node-Red flow to manage multiple marelab RFID-DOOR or ESP-RFID Door access controls over a Node-Red based home automatisation system. When you follow the tutrial here and configured the needed setting right you get a Web GUI with the following functionality

##Dialog GUI to manage RFID devices
 <img align="left" src="https://github.com/marelab/rfid-door-node-red/blob/master/images/gui-reader-list.png">


##Dialog GUI to manage Users of the devices
 <img align="left" src="https://github.com/marelab/rfid-door-node-red/blob/master/images/gui-reader-list.png">

##Dialog GUI to manage new Users 
 <img align="left" src="https://github.com/marelab/rfid-door-node-red/blob/master/images/gui-unknown-user.pngg">


##Dialog GUI to List events and acess trys of the devices
 <img align="left" src="https://github.com/marelab/rfid-door-node-red/blob/master/images/gui-access-log.png">
 <img align="left" src="https://github.com/marelab/rfid-door-node-red/blob/master/images/gui-event-log.png">


All communication is done over MQTT. 

Installation Instructions
This instruction is based on a Node-Red Installation for Rasberry PI but should also work on any Linux based system.

Basic prepareations
You need the following tools to get the flow running:
- marelab rfid-door firmware 
- MySQL Database (stores devices, user & logs)
- MQTT Server

Install the marelab rfid-door-node-red flow

Configure the marelab rfid-door-node-red flow

Configure the marelab rfid-door device
