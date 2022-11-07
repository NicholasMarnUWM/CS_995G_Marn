      ******************************************************************
      * Author: Nicholas Marn
      * Date: 11/7/2022
      * Purpose: Demonstrate addition in Cobol
      * Tectonics: cobc
      * THanks to Simranjit Singh of
      * https://www.youtube.com/watch?v=wZ_V0xR7Wr0
      * whose videos helped me transform theory into real world
      * application.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBOL-ADDITION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Num1 PIC 9(2).
      * Important realization -- the number after 9 determines.
      * the number of chars.
      * Als0 re-learned that commenting in between lines of code IS
      * possible, by this method!
       01 Num2 PIC 9(2).
       01 Num3 PIC 9(3).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       DIS.
            DISPLAY "Enter number!".
            ACCEPT Num1.
            DISPLAY "Enter second number!".
            ACCEPT Num2.
            ADD Num1, Num2 GIVING Num3.
            DISPLAY Num3.
       END PROGRAM COBOL-ADDITION.
