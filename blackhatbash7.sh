touch example_file1 example_file2 example_file3

 grep "35.237.4.214" log.txt
  grep "35.237.4.214\|13.66.139.0" log.txt
  $ grep -e "35.237.4.214" -e "13.66.139.0" log.txt
  ps 
  $ ps | grep -i tty
  $ grep -v "35.237.4.214" log.txt
   grep -o "35.237.4.214" log.txt
   $ awk '{print $1}' log.txt
   $ awk '{print $3}' log.txt
   awk '{print $1,$2,$3}' log.txt
   awk '{print $1,$NF}' log.txt
   printf "hola1,chao1\nhola2,chao2\nhola3,chao3\n" > test.scv
   $ awk 'NR < 10' log.txt
    grep "42.236.10.117" log.txt
    # grep busca en log.txt las líneas que contienen la IP 42.236.10.117   awk '{print $7}'
# awk muestra solo la columna 7 de esas líneas
grep "42.236.10.117" log.txt | awk '{print $7
#juntos filtran las líneas por esa IP y luego imprimen únicamente el dato de la columna 7