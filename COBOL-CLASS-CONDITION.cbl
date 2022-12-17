      ******************************************************************
      * Author: Nicholas Marn
      * Date: 11/3/2022
      * Purpose: Demonstrate COBOL's ability to discern INT values from
      * characters. Also demonstrate COBOL's "inline" perform.UPDATE 11/
      * 10/2022. For some reason I am struggling with the PERFORM syntax
      * Will work on this week. UPDATE 12/17/2022 this is a holdover, correct usage of PERFORM syntax demonstrated in later code.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLASS-CONDITION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Chars PIC X(50) VALUE "I am a string of chars".
       01 Int PIC 9(3) VALUE 100.
       PROCEDURE DIVISION.
           IF Chars IS ALPHABETIC THEN
               DISPLAY Chars.
           IF Chars is NUMERIC  THEN
               DISPLAY "Oh no! This didn't work right.".
           IF Int IS ALPHABETIC THEN
               DISPLAY "Oh no! This didn't work right.".
           IF Int is NUMERIC  THEN
               DISPLAY Int.







           STOP RUN.
       END PROGRAM CLASS-CONDITION.
