      ******************************************************************
      * Author: Nicholas Marn
      * Date: 10/25/2022
      * Purpose: Demonstrate input and output in COBOL.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MARN_COBOL_INPUT_OUTPUT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NAME PIC X(15).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Enter your name: ".
            ACCEPT NAME.
            DISPLAY "Your name is ", NAME.
       END PROGRAM MARN_COBOL_INPUT_OUTPUT.
