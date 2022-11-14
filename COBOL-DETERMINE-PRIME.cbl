      ******************************************************************
      * Author:Nicholas Marn
      * Date: 11/13/2022
      * Purpose: This one  really displayed how far I've come with COBOL
      * Demonstrate use of the VARYING function.
      * Use of the ZEROS in the WORKING-STORAGE section to pre-set
      *  ALSO FINALLY GOT PERFORMS TO WORK CORRECTLY.
      * Demonstrate correct usage of moves.
      * HOWEVER, WORKIS STILL NEEDED. Learn how to use 88's as BOOLEANS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIND-PRIMES.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Numbers_Check    PIC 9(2).
       01 floater PIC 9(3)V9(4) VALUE ZEROS.
       01 res_int   PIC 9(3) VALUE ZEROS.
       01 divisor   PIC 9(2) VALUE ZEROS.
       01 prime   PIC 9 VALUE ZEROS.
       PROCEDURE DIVISION.
       SET Numbers_Check to 0.
       PERFORM VARYING Numbers_Check FROM 1 BY 1 UNTIL
       Numbers_Check = 99
           MOVE 1 TO prime
           PERFORM VARYING divisor FROM 2 BY 1 UNTIL divisor >=
           Numbers_Check
           COMPUTE floater = Numbers_Check/ divisor
           MOVE floater TO res_int
           IF res_int = floater THEN
                MOVE 0 TO prime
                EXIT PERFORM
           END-IF
       END-PERFORM
       IF prime = 1 THEN DISPLAY Numbers_Check, " is prime." END-IF
       END-PERFORM
       STOP RUN.
