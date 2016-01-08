#!/bin/bash
#

IFS=$'
'
REGEXP_EXCEL='^.*.xls$'
REGEXP_ERROR='ERROR ARCHIVO'
CARPETA="Planillas"
CSALIDA="salida"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for file in $( ls -1p "$DIR/$CARPETA/" )
do
	if echo "$file" | grep -q "$REGEXP_EXCEL"
	then
		RESULTADO=`python parser.py "$DIR/$CARPETA/$file"`
		if echo $RESULTADO | grep -q "$REGEXP_ERROR"
		then
			echo "SE ENCONTRO ERROR"
			mv "$DIR/$CARPETA/$file" "$DIR/error"
		else
			echo $RESULTADO
			mv "$DIR/$CARPETA/$file" "$DIR/ok"
		fi
	fi
done

cd "$DIR/$CSALIDA/"
cat * > ../salida.txt

