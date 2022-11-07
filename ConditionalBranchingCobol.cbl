      ******************************************************************
      * Author:Nicholas Marn
      * Date: 11/1/2022
      * Purpose: SHOW conditional branching in a cobol program
      * Tectonics: cobc
      * The following is my own work, with help on implementation from
      * https://www.tutorialbrain.com/mainframe/cobol_if_else_statement/
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDITIONAL-BRANCHING-EXAMPLE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 LOWERBOUND PIC 9(1).
       01 MIDDLERANGE PIC 9(1).
       01 UPPERBOUND PIC 9(3).
       01 USERINPUT PIC 9(3).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           SET LOWERBOUND TO 3.
           SET MIDDLERANGE TO 6.
           SET UPPERBOUND TO 999.
           DISPLAY "Please choose a number between 1-999: ".
           ACCEPT USERINPUT.
           DISPLAY "You have entered ", USERINPUT, ".".
      * Discovering that IF-ELSE is not an option, used NESTED IFS
           IF USERINPUT < LOWERBOUND
               DISPLAY USERINPUT, " is less than ", LOWERBOUND
           ELSE
               IF USERINPUT < MIDDLERANGE
                   DISPLAY USERINPUT, " is greater than or equal to ",
                   LOWERBOUND, " but less than ", MIDDLERANGE
               ELSE
                   DISPLAY USERINPUT, " is greater than both ",
                   LOWERBOUND, " and greater than or equal to ",
                   MIDDLERANGE
               END-IF

           END-IF





            STOP RUN.
       END PROGRAM CONDITIONAL-BRANCHING-EXAMPLE.
