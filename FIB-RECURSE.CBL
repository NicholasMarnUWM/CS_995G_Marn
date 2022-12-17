	 ******************************************************************
       * Author: Nicholas Marn
       * Date: 12/14/2022
       * Purpose: Demonstrate recursive cobol. Thanks to IBM Doucumentation
	 * on making recursive calls https://www.ibm.com/docs/en/cobol-zos/6.3?topic=subprograms-making-recursive-calls
       * Tectonics: cobc
	
       ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIB-RECURSE IS RECURSIVE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 a USAGE IS BINARY-LONG.
	 01 b USAGE IS BINARY LONG.
	 LINKAGE SECTION.
	 01 holder IS BINARY-LONG.
       PROCEDURE DIVISION. USING BY VALUE holder
       MAIN-PROCEDURE.
            IF holder EQUAL ZERO
			MOVE 0 TO RETURN-CODE
			GOBACK
		END-IF
		IF HOLDER = 1
			MOVE 1 to RETURN-CODE
			GO BACK.
		END-IF

		COMPUTE HOLDER = HOLDER -1
		CALL "FIB-RECURSE" USING BY VALUE holder RETURNING a
		COMPUTE HOLDER = HOLDER -1
		CALL "FIB-RECURSE" USING BY VALUE holder RETURNING b
		COMPUTE RETURN-CODE = a + b
		GOBACK.

	 END-PROGRAM FIB-RECURSE.
