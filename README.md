# Калякин Дмитрий Александрович, БПИ226

**Вариант 18. Условие задачи:** Разработать программу, заменяющую все согласные буквы в
заданной ASCII–строке на заглавные.

**Работа выполнена на оценку 7.**

[Тесты для подпрограмм](https://github.com/qw1zze/Indiviual-homework-3/tree/main/Tests)

[Папка Code](https://github.com/qw1zze/Individual-Homework-1/tree/main/Code) содержит 3 файла. Файлы main3.s решает основную задачу, funs.s содержит подпрограммы для ввода, вывода и изменения строки, macros.m содержит нужные макросы.

Пример работы программы:

![image](https://github.com/qw1zze/Indiviual-homework-3/assets/109992610/ad024c2c-5a10-4499-975b-747fc672fc3e)

Исходный файл:

![image](https://github.com/qw1zze/Indiviual-homework-3/assets/109992610/97cf340e-eb58-4a47-b351-8207fb775682)

Выходной файл:

![image](https://github.com/qw1zze/Indiviual-homework-3/assets/109992610/97dd6fdc-f1c6-481c-9ad5-92f94c86da82)

Если входного файла не существует:

![image](https://github.com/qw1zze/Indiviual-homework-3/assets/109992610/063b051d-a4a4-40c2-a326-8c07e2506062)

Если входной файл невозможно прочитать:

![image](https://github.com/qw1zze/Indiviual-homework-3/assets/109992610/6424d4dc-a7d8-4ec8-abdf-5146301091f0)

Если невозможно создать или открыть итоговый файл:

![image](https://github.com/qw1zze/Indiviual-homework-3/assets/109992610/20451200-da4b-43f9-a279-874434fb0f39)

В папке Tests можно найти вводимые файлы и полученные на них ответы. Несколько примеров работы программы:

![image](https://github.com/qw1zze/Indiviual-homework-3/assets/109992610/e144cff6-b2e5-4c87-828c-e48263c80c7e)
![image](https://github.com/qw1zze/Indiviual-homework-3/assets/109992610/bde77f2a-f248-4b2d-b231-4ccd87ad7fd9)

![image](https://github.com/qw1zze/Indiviual-homework-3/assets/109992610/c184e092-de6a-4039-8f0b-eb5a9c00210c)
![image](https://github.com/qw1zze/Indiviual-homework-3/assets/109992610/774c335b-0d16-42a7-8b9a-fbe8fd0f5268)

![image](https://github.com/qw1zze/Indiviual-homework-3/assets/109992610/2e358e5b-1598-49f0-bf97-5256571d789c)
![image](https://github.com/qw1zze/Indiviual-homework-3/assets/109992610/1b8b0542-d3c2-44bd-949b-6ac287f56f76)

![image](https://github.com/qw1zze/Indiviual-homework-3/assets/109992610/0e937701-1a05-474e-a9e7-88431d6b348f)
![image](https://github.com/qw1zze/Indiviual-homework-3/assets/109992610/4ce4f291-56ea-45ed-803a-690c53899e84)

![image](https://github.com/qw1zze/Indiviual-homework-3/assets/109992610/8e7b2e53-2467-4d6a-b5ba-ed4600d6ea2b)
![image](https://github.com/qw1zze/Indiviual-homework-3/assets/109992610/e3f960da-526e-462a-8012-f804a20c3078)


Программа считывает данные с файла и записывает их в другой.

Все изменяемые параметры программы вводятся с консоли.

В программе присутствуют комментарии, поясняющие выполняемые ей действия.

Обработка данных, полученных из файла сформирована в виде отдельной подпрограммы change_string.

В подкаталоге Tests присутствуют файлы, используемые для тестирования.

Внутри функций используются регистровые переменные.

Для чтения текста из файла реализован буфер ограниченного размера, равного 512 байтам. При этом программа читает файлы размером до 10 килобайт.
Реализован ввод исходных данных, их обработка, вывод результатов через соответствующие подпрограммы. Подпрограммы
получают необходимые им данные через параметры в соответствии с принятым соглашением о передаче параметров.

Возвращаемые из подпрограмм значения возвращаются через параметры в соответствии с общепринятыми соглашениями.

В программу добалвлено использование макросов для реализации
ввода, вывода, и обработки данных. Макросы поддерживают повторное использование с различными массивами и другими
параметрами. 

Макросы выделены в отдельную автономную библиотеку.
