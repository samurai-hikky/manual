#!/bin/bash
#здесь задаем входную кодировку
FROM_ENCODING="windows-1251"
#конечная кодировка (UTF-8)
TO_ENCODING="UTF-8"
#преобразование
CONVERT=" iconv  -f   $FROM_ENCODING  -t   $TO_ENCODING"
#цикл для преобразования нескольких файлов
for  file  in  *.txt; do
$CONVERT   "$file"   -o  "${file%.txt}.utf8.converted"
done
exit 0
