(* Function Declaration *)
FUNCTION BubbleSort : BOOL
VAR_IN_OUT
	numbers : ARRAY[*] OF INT;
END_VAR
VAR
	hold : INT;
	len : INT;
	i, j : INT;
END_VAR


(* Function Implementation *)
len := TO_INT(ABS(UPPER_BOUND(numbers, 1) - LOWER_BOUND(numbers, 1)) + 1);	

FOR i := 0 TO len-2 BY 1 DO
	FOR j := 0 TO len-2-i BY 1 DO
		IF numbers[j] > numbers[j+1] THEN
			hold := numbers[j];
			numbers[j] := numbers[j+1];
			numbers[j+1] := hold;
		END_IF
	END_FOR;  
END_FOR;

BubbleSort := TRUE;



(* --------------------------------------------------------------------------------------------- *)



(* Main Declaration *)
PROGRAM PLC_PRG
VAR
	isSorted : BOOL := FALSE;
	myNumbers: ARRAY[0..9] OF INT := [174, 205, 239, 83, 11, 249, 21, 103, 42, 115];
END_VAR


(* Function Call *)
IF NOT isSorted THEN
	isSorted := BubbleSort(numbers := myNumbers);
END_IF
