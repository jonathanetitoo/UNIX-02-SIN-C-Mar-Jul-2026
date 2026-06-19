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