(* Function Declaration *)
FUNCTION BubbleSort : INT
VAR_INPUT
	numbers : REFERENCE TO ARRAY [0..9] OF INT;
END_VAR
VAR
	hold : INT;
	len : INT;
	i, j : INT;
END_VAR


(* Function Implementation *)
len := TO_INT(ABS(UPPER_BOUND(numbers, 1) - LOWER_BOUND(numbers, 1)) + 1);	

FOR i := 0 TO len-1 BY 1 DO
	FOR j := i TO len BY 1 DO
		IF numbers[j] > numbers[j+1] THEN
			hold := numbers[j];
			numbers[j] := numbers[j+1];
			numbers[j+1] := hold;
		END_IF
	END_FOR;  
END_FOR;
