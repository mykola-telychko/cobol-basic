# percent

-- Додано пояснення результатів:
Використовується змінна EXPLANATION, щоб додати текстове пояснення до результатів.

-- Код розділено на логічні блоки для кращої читабельності.

> cobc -x percent-input.cbl
> ./percent-input


Як виправити відображення числа?
Щоб вивід був "5" замість "000000005", потрібно:

Використати редакційну картину (PIC 999999999) для форматування.
Або USAGE DISPLAY (COBOL автоматично позбудеться нулів).
Додати JUST RIGHT або ZERO SUPPRESS (щоб позбутися провідних нулів).
Оновлений код (виправлений вивід)
cobol
Копировать
Редактировать
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERCENT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM         PIC 9(9).
       01 PERCENT     PIC 9(5).
       01 RESULT      PIC Z(9).  *> Z означає "прибирай нулі"

       PROCEDURE DIVISION.
           DISPLAY "Enter a number: ".
           ACCEPT NUM.

           DISPLAY "Enter a percentage: ".
           ACCEPT PERCENT.

           COMPUTE RESULT = NUM * PERCENT / 100.
           DISPLAY "The percentage of the number is: " RESULT.

           STOP RUN.
Що змінилося?
PIC Z(9) означає, що провідні нулі будуть приховані.
Тепер вивід буде коректним:
yaml
Копировать
Редактировать
Enter a number:
100
Enter a percentage:
5
The percentage of the number is: 5
🛠 Якщо потрібно більше налаштувань (наприклад, десяткові числа), можна використати PIC Z(9).99.