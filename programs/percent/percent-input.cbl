       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERCENT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM         PIC 9(9).
       01 PERCENT     PIC 9(5).
       01 RESULT      PIC 9(9).

       PROCEDURE DIVISION.
           DISPLAY "Enter a number: ".
           ACCEPT NUM.

           DISPLAY "Enter a percentage: ".
           ACCEPT PERCENT.

           COMPUTE RESULT = NUM * PERCENT / 100.
           DISPLAY "The percentage of the number is: " RESULT.

           STOP RUN.
