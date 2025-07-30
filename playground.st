PROGRAM PLC_PRG
VAR
	// bmi calculator
	Weight_kg: REAL;
	Height_m: REAL;
	BMI: REAL;
	RedLight: BOOL;
	YellowLight: BOOL;
	GreenLight: BOOL;
	
	// bubble sort
	i: INT;
	j: INT;
	hold: INT;
	ArraySize: INT;
	myNumbers: ARRAY[0..9] OF INT := [174, 205, 239, 83, 11, 249, 21, 103, 42, 115];
	sort_my_array: BOOL := FALSE;
		
	// blink
	tBlink: TON;	// TimeON Function Block
	Blink_1000ms: BOOL;
	SignalOn: BOOL := FALSE;
	SignalLamp_out: BOOL;
END_VAR


(* * * * * * * * * * * * * * * * * * *  MAIN PROGRAM LOGIC  * * * * * * * * * * * * * * * * * * *)

(** NOTES:
 * autocomple variable [ctrl + space]
 * open input assistant [F2]
 *
 * Structured Text is not case sensitive.
 * CODESYS is Open Source
 *
**)
 

// BMI Calculator
BMI := Weight_kg / TO_REAL( EXPT(Height_m, 2));

IF BMI < 18.5 THEN
	// Underweight
	RedLight := TRUE;
ELSIF BMI >= 18.5 AND BMI < 25 THEN
	// Normal
	GreenLight := TRUE;
ELSIF BMI >= 25 AND BMI < 30 THEN
	// Overweight
	YellowLight := TRUE;
ELSIF BMI >= 30 THEN
	// Obese 
	RedLight := TRUE;
END_IF;


// Bubble Sort
ArraySize := TO_INT(ABS(UPPER_BOUND(myNumbers, 1) - LOWER_BOUND(myNumbers, 1)) + 1);	
IF sort_my_array THEN
	FOR i := 0 TO ArraySize-1 BY 1 DO
		FOR j := i TO ArraySize BY 1 DO
			IF myNumbers[j] > myNumbers[j+1] THEN
				hold := myNumbers[j];
				myNumbers[j] := myNumbers[j+1];
				myNumbers[j+1] := hold;
			END_IF
		END_FOR;  
	END_FOR;
END_IF


// Blink
tBlink(IN := NOT tBlink.Q, PT:= T#2000MS);
Blink_1000ms := tBlink.ET > T#1000MS;

SignalLamp_out := SignalOn AND Blink_1000ms;
