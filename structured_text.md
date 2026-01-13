# Structured Text

## Facts

* The language is defined by PLCOpen in IEC 61131-3
* All statements are ended by semicolons.
* The language is not case-sensitive
* Spaces have no effect
* assign value ```A := B```, check if equal ```A = B```



## Control Flow

## Program Delimiters

Officially, every ST program starts with these delimiting keywords. However, in many IDE's they're left out.

```Pascal
PROGRAM
;   // code
END_PROGRAM
```
## Variables

```Pascal
i: INT;
j: INT;
weight: REAL := 23.2;
myArray: ARRAY[0..9] OF INT := [174, 205, 239, 83, 11, 249, 21, 103, 42, 115];
```


## IF Statements 

```Pascal
IF [boolean expression] THEN
    <statement>;
ELSIF [boolean expression] THEN
    <statement>;
ELSE
    <statement>;
END_IF;
```


## CASE Statements

```Pascal
CASE [numeric expression] OF
    result1: <statement>;
    resultN: <statemtent>;
ELSE
    <statement>;
END_CASE;
```


## Loops

In Structured Text, there are 3 types of loops: FOR, WHILE and REPEAT.

```Pascal
// for loop:
FOR count := 0 TO 10 BY 1 DO
    <statement>;
END_FOR;

// while loop:
WHILE [boolean expression] DO
    <statement>;
END_WHILE;

// repeat loop (do-while):
REPEAT
    <statement>;
UNTIL [boolean expression]
END_REPEAT;
```


## Comments

```Pascal
// single line comment

a := 5;     /* comment after statement */
b := 7;     (* comment after statement *)

/* multi line
comment
like this */

(* multi line
comment
like this *)
```



## Data Types

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
| STRING	| character String		    | -	                | -         |


### Bits and Bytes

| IEC type 		| format				| range		|
| ---	 		| ---					| ---		|
| BOOL			| Boolean				|  1 bit	|
| BYTE			| Byte					|  8 bits	|
| WORD			| Word					| 16 bits	|
| DWORD			| Double Word			| 32 bits	|
| LWORD			| Long Word				| 64 bits	|


### Time

| IEC type		| format							| use																	|
| --- 			| --- 								| --- 																	| 
| TIME			| duration of time after an event	| T#10d4h38m57s12ms	<br> TIME#10d4h38m 									|
| DATE			| calendar date						| D#1989-05-22 <br> DATE#1989-05-22 									|
| TIME_OF_DAY	| time of day						| TOD#14:32:07 <br> TIME_OF_DAY#14:32:07.77								|
| DATE_AND_TIME	| date and time of day				| DT#1989-06-15-13:56:14.77	<br> DATE_AND_TIME#1989-06-15-13:56:14.77 	|


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

