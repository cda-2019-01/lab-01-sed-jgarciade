# Escriba su código aquí
file=data.csv
sed 's/\([0-9]*\)\/\([0-9]*\)\/\([0-9]*\);/20\3\/\2\/\1;/' $file | sed 's/;[^A,B,C,a,b,c]{1};/;\\N;/'| sed 's/;;/;\\N;/' | sed 's/;[a,b,c];/\U&/g' | sed 's/;N/;\\N/' | sed 's/;\([0-9]*\),\([0-9]\)/;\1\.\2/' | sed 's/;\([0-9]*\);\([0-9]*\);[0-9]*/;\1;\2/' | sed '/\\N/d' > results.csv
