IDENTIFICATION DIVISION.
PROGRAM-ID. CombinedProgram.

ENVIRONMENT DIVISION.
DATA DIVISION.

PROCEDURE DIVISION.
    PERFORM HelloCob
    PERFORM EchoString
    STOP RUN.

HelloCob.
    DISPLAY 'Hi, Cobol!'.

EchoString.
    DISPLAY 'simple string!'.
    