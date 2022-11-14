      ******************************************************************
      * Author: Nicholas Marn
      * Date: 11/7/2022
      * Purpose: Display usage of PARA's to understand LOOPS
      * EXECUTION
      * Tectonics: cobc
      * Example taken from:
      * https://www.tutorialspoint.com/cobol/cobol_loop_statements.htm
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OUTLINE-PERFORM.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Num1 PIC 9(2).
       01 Num2 PIC 9(2).
       01 Num3 PIC 9(2).
       01 Num4 PIC 9(2).
       01 Num5 PIC 9(2).
       01 NumSum PIC 9(3).
       PROCEDURE DIVISION.
           SET Num1 to 3.
           SET Num2 to 5.
           SET NumSum to 0.
           PERFORM FIRST-PARA.
           PERFORM SECOND-PARA.
           DISPLAY NumSum.
       STOP RUN.
       FIRST-PARA.
           ADD Num1, NumSum, GIVING NumSum.
       SECOND-PARA.
           ADD Num2, NumSum, GIVING Numsum.




       END PROGRAM OUTLINE-PERFORM.
