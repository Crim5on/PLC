
# Structured Text

## Facts

* The language is defined by PLCOpen in IEC 61131-3
* All statements are ended by semicolons.
* The language is not case-sensitive
* Spaces have no effect
* Assign value with ```A := B```, check for equalness  with ```A = B```
* Pointers go only one level deep
* Good practice: "Use references when you can, use pointer when you must."
* Dynamic memory allocation is possible, but bad practice
* There is no function overloading in ST
* Typically, everything is global




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

| IEC Type 	| Format 					| Range 			| Size      |
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

| IEC Type 		| Format				| Range		|
| ---	 		| ---					| ---		|
| BOOL			| Boolean				|  1 bit	|
| BYTE			| Byte					|  8 bits	|
| WORD			| Word					| 16 bits	|
| DWORD			| Double Word			| 32 bits	|
| LWORD			| Long Word				| 64 bits	|


### Time

| IEC Type		| Format							| Use																	|
| --- 			| --- 								| --- 																	| 
| TIME			| duration of time after an event	| T#10d4h38m57s12ms	<br> TIME#10d4h38m 									|
| DATE			| calendar date						| D#1989-05-22 <br> DATE#1989-05-22 									|
| TIME_OF_DAY	| time of day						| TOD#14:32:07 <br> TIME_OF_DAY#14:32:07.77								|
| DATE_AND_TIME	| date and time of day				| DT#1989-06-15-13:56:14.77	<br> DATE_AND_TIME#1989-06-15-13:56:14.77 	|


## Operators

| Operator 		| Operation				|
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



## The IEC 61131-3 Standard Library

| Type          | Function  | Description                       |
| ---	 		| ---		| ---                               |
| Flip-Flop     | SR()      | Flip-Flop with dominant set       |
| Flip-Flop     | RS()      | Flip-Flop with dominant reset     |
| Timer         | TON()     | Switch-on delay                   |
| Timer         | TOF()     | Switch-off delay                  |
| Timer         | TP()      | Pulse Timer                       |
| Counter       | CTU()     | Up Counter                        |
| Counter       | CTD()     | Down Counter                      |
| Counter       | CTUD()    | Up and Down Counter               |
| Trigger       | R_TRIG()  | Trigger on Rising Flank           |
| Trigger       | F_TRIG()  | Trigger on Falling Flank          |


## Typecasting Functions

```Pascal
SINT_TO_BOOL()
UINT_TO_SINT()
BOOL_TO_USINT()
REAL_TO_INT()
INT_TO_UINT()
DINT_TO_REAL()
DINT_TO_TIME()
DINT_TO_DT()
STRING_TO_INT()
```


## Arithmetic Functions

| Function  | Description               |
| ---	 	| ---		                |
| ABS()     | Absolute Value            |
| ACOS()    | Arcus Cosinus             |
| ADD()     | Addition                  |
| ASIN()    | Arcus Sinus               |
| ATAN()    | Arcus Tangens             |
| COS()     | Cosinus                   |
| DIV()     | Division                  |
| EXP()     | Natural Exponent (base e) |
| EXPT()    | Exponent                  |
| LN()      | Logarithm (base e)        |
| LOG()     | Logarithm (base 10)       |
| MOD()     | Modulo / Remainder        |
| MUL()     | Multiplication            |
| SIN()     | Sinus                     |    
| SQRT()    | Square Root               |
| SUB()     | Subtraction               |
| TAN()     | Tangens                   |
| TRUNC()   | Remove Fraction (cut off) |


## Compare Functions

| Function  | Description               |
| ---	 	| ---		                |
| EQ()      | Equal                     |
| GE()      | Greater or Equal          |
| GT()      | Greater Than              |
| LE()      | Less or Equal             |
| LT()      | Less Than                 |
| NE()      | Not Equal                 |


## Assign and Limiting Functions

| Function  | Description                           |
| ---	 	| ---		                            |
| LIMIT()   | Limit value by upper and lower limit  |
| MAX()     | Maximum of two values                 |
| MIN()     | Minimum of two values                 |
| MOVE()    | Assign                                |
| MUX()     | Select value out of several           |
| SEL()     | Select value out of two               |


## Bit and logic Functions

| Function  | Description                           |
| ---	 	| ---		                            |
| AND()     | bitwise AND                           |
| NOT()     | bitwise NOT                           |
| OR()      | bitwise OR                            |
| ROL()     | bitwise Rotate Left <<                |
| ROR()     | bitwise Rotate Right >>               |
| SHL()     | bitwise Shift Left <<                 |
| SHR()     | bitwise Shift Right >>                |
| XOR()     | bitwise XOR                           |
| ADR()     | Address of a variable                 |
| ADRINST() | Address of a function block instance  |
| SIZEOF()  | Size of a variable in byte            |


## String Functions

```Pascal
CONCAT()
DELETE()
FIND()
INSERT()
LEFT()
LEN()
MID()
REPLACE()
RIGHT()
```

## Own Functions

```Pascal
(* Function Declaration *)
FUNCTION GetGreaterSmaller : INT
VAR_INPUT
    number1 : INT;
    number2 : INT;
END_VAR
VAR_OUTPUT
    greater : INT;
    smaller : INT;
END_VAR

(* Function Implementation *)
IF number1 > number2 THEN
    greater := number1;
    smaller := number2;
ELSE
    greater := number2;
    smaller := number1;
END_IF


(* Main Declaration *)
PROGRAM PLC_PRG
VAR
    resultGreater : INT;
    resultSmaller : INT;
END_VAR

(* Function Call *)
GetGreaterSmaller(number1 := 7, number2 := 23, greater => resultGreater, smaller => resultSmaller);

```

### Alternate Way to Return

Appart from using output variables, a value can also be returned by assining it to its own function name.

```Pascal
(* Function Declaration *)
FUNCTION calcBMI : REAL
VAR_INPUT
	weight_kg : REAL;
	height_m : REAL;
END_VAR

(* Function Implementation *)
calcBMI := weight_kg / TO_REAL( EXPT(height_m, 2));


(* Main Declaration *)
PROGRAM PLC_PRG
VAR
    myBMI: REAL;
END_VAR

(* Function Call *)
myBMI := calcBMI(weight_kg := 63.5, height_m :=1.77);

```


### In-Out Parameters
```Pascal
(* Function Declaration *)
FUNCTION SwapNumbers : INT
VAR_IN_OUT
    myNumber1 : INT;
    myNumber2 : INT;
END_VAR
VAR
    buffer : INT;
END_VAR;

(* Function Implementation *)
buffer := myNumber1;
myNumber1 := myNumber2;
myNumber2 := buffer;


(* Main Declaration *)
PROGRAM PLC_PRG
VAR
    num1 : INT := 3;
    num2 : INT := 7;
END_VAR

(* Function Call *)
SwapNumbers(myNumber1 := num1, myNumber2 := num2);

```

### Pass Parameter by Refernce
```Pascal
(* Function Declaration *)
FUNCTION AddNumbers : INT
VAR_INPUT
	num1 : REFERENCE TO INT;
	num2 : REFERENCE TO INT;
END_VAR
VAR_OUTPUT
	result : INT := 0;
END_VAR

(* Function Implementation *)
result := num1 + num2;


(* Main Declaration *)
PROGRAM PLC_PRG
VAR
    num1 : INT := 1000;
	num2 : INT := 2000;
	mySum : INT;
END_VAR

(* Function Call *)
AddNumbers(num1 := num1, num2 := num2, result => mySum);
```





## Pointers and References

```Pascal
myVariable : INT := 20;
myPointer : POINTER TO INT := ADR(nVariable);
myPointer^ := 30;   (* dereferencing *)

myReference : Reference TO INT REF=myVariable
```
