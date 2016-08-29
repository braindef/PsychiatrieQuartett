#!/bin/bash

echo usage:
echo ./createCard.sh Title Abstract "Text Line 1" "Text Line 2" "Text Line 3" "Text Line 4" filename.svg
echo                  $1      $2         $3            $4            $5             $6            $7

cat templatePart1.svg >$7
cat templatePart2.svg >>$7
cat templatePart3.svg >>$7
echo $3 |tr "\n" " " >>$7
cat templatePart4.svg >>$7
echo $4 |tr "\n" " " >>$7
cat templatePart5.svg >>$7
echo $5 |tr "\n" " " >>$7
cat templatePart6.svg >>$7
echo $6|tr "\n" " " >>$7
cat templatePart7.svg >>$7
head -c -1 templatePart8.svg >>$7
head -c -1 templatePart9.svg >>$7
echo $1|tr "\n" " " >>$7
head -c -1 templatePart10.svg >>$7
echo $2|tr "\n" " " >>$7
cat templatePart11.svg >>$7


xdg-open $7
inkscape $7
