      ******************************************************************
      * Author: Nicholas Marn
      * Date: 9/18/2022
      * Purpose: Revisiting original exercise from 9/10
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MarnHelloWorld.
       DATA DIVISION.
       FILE SECTION.
      *Revisit these, see if they function similar to MIPS *
      * Prior error, realized that in order to comment,
      * ASterick must be in Inidcator Column.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
      *MAIN-PROCEDURE I was able to comment this line out with no effect
      *      on the code. Does this break the code into modules OR
      *     functions like Java or C?
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM MarnHelloWorld.
