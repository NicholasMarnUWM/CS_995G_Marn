  ******************************************************************
      * Author: Nicholas Marn
      * Date: 12/14/2022
      * Purpose: Demonstrate a recursive call
      * Tectonics: cobc
      * Set N to whatever value you wish to find that number in the fibonacci Sequence
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBOL-RECURSE-START.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 n   pic x(2) comp-x.
	 01 f pic x(3) comp-x.
	 
	
	 LOCAL-STORAGE SECTION.
	 PROCEDURE DIVISION
	 	ACCEPT n.
	 	CALL "fib_subroute" USING BY VALUE n RETURNING f
	 	DISPLAY f
	 	GOBACK.
	 end program COBOL-RECURSE-START.
