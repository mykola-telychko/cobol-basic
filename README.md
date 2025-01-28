# cobol-basic

https://onecompiler.com/cobol
https://www.jdoodle.com/execute-cobol-online


IDENTIFICATION DIVISION.
PROGRAM-ID. HELLO-WORLD.

DATA DIVISION.
    WORKING-STORAGE SECTION.
        77 X PIC 99.
        77 Y PIC 99.
        77 Z PIC 99.

PROCEDURE DIVISION.
    SET X TO 10.
    SET Y TO 25.
    ADD X Y GIVING Z.
    DISPLAY "X + Y = "Z.
STOP RUN.
Розділ IDENTIFICATION DIVISION:

IDENTIFICATION DIVISION.: Це перший розділ будь-якої COBOL-програми.
PROGRAM-ID. HELLO-WORLD.: Ця директива задає ім'я програми. У цьому випадку ім'я програми - "HELLO-WORLD".
Розділ DATA DIVISION:

DATA DIVISION.: Цей розділ описує структуру даних, які будуть використовуватися в програмі.
WORKING-STORAGE SECTION.: Ця секція визначає робочі змінні, які використовуються для обчислень і зберігання тимчасових даних.
77 X PIC 99.: Оголошує змінну X як числове поле з двома цифрами (99).
77 Y PIC 99.: Оголошує змінну Y як числове поле з двома цифрами.
77 Z PIC 99.: Оголошує змінну Z як числове поле з двома цифрами для зберігання результату додавання.
Розділ PROCEDURE DIVISION:

PROCEDURE DIVISION.: Цей розділ містить інструкції, які виконуються програмою.
SET X TO 10.: Присвоює значення 10 змінній X.
SET Y TO 25.: Присвоює значення 25 змінній Y.
ADD X Y GIVING Z.: Додає значення змінних X та Y і зберігає результат у змінній Z.
DISPLAY "X + Y = "Z.: Виводить на екран результат додавання у форматі "X + Y = [значення Z]".
STOP RUN.: Завершує виконання програми.
Як працює код:

Ініціалізація: Програма починає виконання з розділу PROCEDURE DIVISION.
Присвоєння значень: Змінним X і Y присвоюються значення 10 і 25 відповідно.
Обчислення: Виконується операція додавання X і Y, а результат зберігається в змінній Z.
Виведення результату: На екран виводиться повідомлення "X + Y = " разом із значенням змінної Z.
Завершення: Програма завершує свою роботу.
Цей простий приклад демонструє основні елементи структури COBOL-програми та базові операції з даними. COBOL є мовою високого рівня, яка використовується для розробки бізнес-застосувань, таких як банківські системи, обробка даних та управління запасами.

-------------------

як зробити так щоб було дві команди . IDENTIFICATION DIVISION.

    PROGRAM-ID. HelloCob.

    PROCEDURE DIVISION.

    DISPLAY 'Hi, Cobol!'.

STOP RUN.



IDENTIFICATION DIVISION.

    PROGRAM-ID. echoString.

    PROCEDURE DIVISION.

    DISPLAY 'simple string!'.

STOP RUN.



Як об'єднати декілька COBOL-програм в одну
Розуміння проблеми:

Ви маєте дві окремі COBOL-програми, кожна з яких виконує свою задачу. Ваше завдання - об'єднати їх в одну програму.

Рішення:

Є кілька підходів до об'єднання COBOL-програм, кожен з яких має свої переваги та недоліки. Обирати підхід слід залежно від конкретного завдання та структури ваших програм.

1. Створення процедур:
Ідея: Винести код кожної програми в окрему процедуру.
Реалізація:
COBOL

--------- not work ------------
IDENTIFICATION DIVISION.
PROGRAM-ID. CombinedProgram.

PROCEDURE DIVISION.
    CALL 'HelloCob'.
    CALL 'echoString'.
    STOP RUN.

PROCEDURE DIVISION HelloCob.
    DISPLAY 'Hi, Cobol!'.
    EXIT.

PROCEDURE DIVISION echoString.
    DISPLAY 'simple string!'.
    EXIT.
--------- not work ------------


---- work ---- 
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
---- work ---- 

    

Переваги:
Чітке розділення функціональності.
Можливість повторного використання процедур.
Недоліки:
Може ускладнити структуру програми при великій кількості процедур.
2. Використання PERFORM:
Ідея: Використовувати оператор PERFORM для виклику секцій коду.
Реалізація:
COBOL

IDENTIFICATION DIVISION.
PROGRAM-ID. CombinedProgram.

PROCEDURE DIVISION.
    PERFORM HelloCob.
    PERFORM echoString.
    STOP RUN.

HelloCob SECTION.
    DISPLAY 'Hi, Cobol!'.

echoString SECTION.
    DISPLAY 'simple string!'.
Переваги:
Простий і зрозумілий синтаксис.
Недоліки:
Менш гнучкий підхід, ніж використання процедур.
3. Умовні переходи:
Ідея: Використовувати умовні переходи для виконання різних дій.
Реалізація:
COBOL

IDENTIFICATION DIVISION.
PROGRAM-ID. CombinedProgram.

PROCEDURE DIVISION.
    DISPLAY 'Hi, Cobol!'.
    DISPLAY 'simple string!'.
    STOP RUN.

Переваги:
Простий підхід для невеликих програм.
Недоліки:
Може призвести до складної структури програми при великій кількості умов.
Вибір оптимального підходу:
Розмір і складність програм: Для невеликих програм можна використовувати простіші підходи (умовні переходи, PERFORM). Для великих і складних програм краще використовувати процедури.
Повторне використання коду: Якщо код буде використовуватися багаторазово, то процедури є кращим вибором.
Зрозумілість коду: Структура програми повинна бути легко зрозумілою для інших програмістів.
Додаткові міркування:

Параметри: Якщо процедури мають потребу в передачі параметрів, то необхідно використовувати механізми передачі параметрів у COBOL.
Область видимості даних: Важливо правильно визначити область видимості даних, щоб уникнути конфліктів імен.
Структура програми: Слід дотримуватися чіткої структури програми, щоб полегшити її розуміння та модифікацію.