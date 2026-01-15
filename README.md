# PLC - Programmable Logic Controller
This repository explores the world of PLCs as well as the wider domain of Operational Technology (OT).


## The 5 IEC 61131-3 programing languages

* IL - Instruction List (deprecated)
* ST - Structured Text
* LD - Ladder Diagram
* FBD - Function Block Diagram
* SFC - Sequential Function Charts


### PLC Restarts

* **Hot Restart**: Continiues normal program execution at breakpoint after interruption (e.g. power loss). All program data retain their value.
* **Warm Restart**: Restarts the program at the beginning, *retentive data* persists, all *non-retentive data* is reset to init values.
* **Cold Restart**: Reboots the whole system, all data (including  *retentive data*) is reset to init values, and program execution starts from the beginning.

---

## Computing Units in the Domain of Operational Technology

OT describes the domain of hardware and software used on production floors, in industrial control systems and the like. The term aims to differentiate the OT domain from the traditional IT (Information Technology) domain since different technologies are needed and used. OT can therefore be called "The IT of the non-carpeted areas". Typical examples of technologies include PLC, RTU, CNC, SCADA systems and industrial bus protocolls like Modbus. Domains like IoT, embedded systems and automotive (like VCUs or ECUs) can also be regarded Operational Technology. Technologies and standards used in OT are typically unknown in the traditional IT domain, although they follow the same basic principles.


### PLC - Programmable Logic Controller

PLCs are computing units typically used to control and monitor production machines in automated manufacturing. Examples would be production lines, printing machines, packing machines, and the like. Historically, production machines were controlled using time relais and human workers that both continiously made way to PLCs. Today, PLCs are controlling traffic lights, car tunnels, trains, boats and even electrics in private houses (smart building).

Because of their origin, PLCs are typically programmed by electrical engineers and machine builders using graphical programming languages that resemble wiring diagrams (LD) or logic diagrams (FBD). However, with PLC systems becomming more and more complex, code based programming languages like 'Structured Text' are on the rise and more software centered expertise is needed bringing software engineers into the domain. This transformation is still in the process today (2023) and many changes are expected in the years to come (keywords: IIoT, Industry 4.0, Industrial Ciber Security, etc).


### RTU - Remote Terminal Unit

RTUs are computing units typically used to read data from sensors and forward them to a centralized control system like SCADA. They can also control things and support various interfaces for I/O or bus protocols. Typical examples where RTUs come to use are Oil rigs, weather stations, power plants, sewage treatment, and the like. They are very endurable considering factors like vibration, weather conditions, weak power or internet supply, etc. Typically, they can be programmed using a graphical web interface, or in programming languages like C# or BASIC, but often also support the five IEC 61131-3 defined programming languages.


### PLC vs RTU

Although PLCs and RTUs come from completly different backgrounds, they are becomming increasingly similar to the point where the boarders blur. Both can be interfaced with a SCADA system, both feature different Bus Protocols, I/O and the like. So lets summarise some of the differences:

* PLC: Is primarily made to control (but can also monitor) in a local environment
* RTU: Is primarily made to monitor (but can also control) in a remote environment
* PLC: Is cheaper than a RTU
* RTU: Is more endurable in rough conditions (vibration, heat, moisture, etc)
* PLC: Is typically programmed in one of the 5 IEC 61131-3 programming languages
* RTU: Is typically programmed using a simple graphical web interface, C# or BASIC
* PLC: Is made to be supplied with stable AC power and internet connection
* RTU: Can better handle DC power and weak internet connections


### SCADA - Supervisory Control And Data Acquisition

SCADA can be described as a hardware and software architecture for supervision of industrial systems. It consits of control and monitoring units (e.g PLC, RTUs), industrial HMIs (Human Machine Interfaces), IIoT (Industrial Internet-of-Things) devices (e.g. IIoT sensors), communication technology (e.g. bus systems, ethernet, radio technology), and a highly abstracted graphical supervisory interface. In simpler terms: all OT devices connected to each other becomming bigger than the sum of its parts. The highly abstracted graphical supervisory interface on the top level feautures live data from several machines and sensors regarding production rate, maintenance, efficency, throughput, environment and the like. Imagine the main control floor in a nuclear power plant for example. Everything that can be seen on the control panels roots down several layers to sensors and actuators. This architecture could be set up using SCADA.


---

## Data Types Defined by IEC 61131-3

## IEC Data Types

| IEC type 	| format 					| range 			| size      |
| --- 		| --- 						| --- 				| ---       |
| SINT 		| short integer				| -128 	.. 127 		|  8 bit    |
| INT 		| integer					| -32768 .. 32767	| 16 bit    |
| DINT 		| double integer			| -2^31 .. 2^32-1	| 32 bit    |
| LINT 		| long integer				| -2^63 .. 2^63-1	| 64 bit    |
| USINT		| unsigned short integer	| 0 .. 255			|  8 bit    |
| UINT		| unsigned integer			| 0 .. 2^16-1		| 16 bit    |
| UDINT		| unsigned double integer	| 0 .. 2^32-1		| 32 bit    |
| ULINT		| unsigned long integer		| 0 .. 2^64-1		| 64 bit    |
| REAL		| real numbers				| ±10^±38			| 32 bit    |
| LREAL		| long real numbers			| ±10^±308			| 64 bit    |


### Time

| IEC type		| format							| use																	|
| --- 			| --- 								| --- 																	| 
| TIME			| duration of time after an event	| T#10d4h38m57s12ms	<br> TIME#10d4h38m 									|
| DATE			| calendar date						| D#1989-05-22 <br> DATE#1989-05-22 									|
| TIME_OF_DAY	| time of day						| TOD#14:32:07 <br> TIME_OF_DAY#14:32:07.77								|
| DATE_AND_TIME	| date and time of day				| DT#1989-06-15-13:56:14.77	<br> DATE_AND_TIME#1989-06-15-13:56:14.77 	|


### Strings

| IEC type			| format				| range			|
| ---				| ---					| ---			|
| STRING			| character String		| ‘My string’	|


### Bits and Bytes

| IEC type 		| format				| range		|
| ---	 		| ---					| ---		|
| BOOL			| Boolean				|  1 bit	|
| BYTE			| Byte					|  8 bits	|
| WORD			| Word					| 16 bits	|
| DWORD			| Double Word			| 32 bits	|
| LWORD			| Long Word				| 64 bits	|


### Derived data types

* Structured data types
* Enumerated data types
* Sub-ranges data types
* Array data types


## Operators

| operator 		| operation				|
| ---	 		| ---					|
| NOT <br> - 	| negation				|
| **	 		| exponent				|
| *		 		| multiply				|
| /		 		| divide				|
| MOD	 		| modulo				|
| +	 			| add					|
| -		 		| subtract				|
| <	 			| lesser than			|
| >	 			| greater than			|
| <=	 		| lesser equal			|
| >=	 		| greater equal			|
| =		 		| equal					|
| <>	 		| unequal				|
| & <br> AND 	| boolean and			|
| OR	 		| boolean or			|
| XOR	 		| boolean xor			|

