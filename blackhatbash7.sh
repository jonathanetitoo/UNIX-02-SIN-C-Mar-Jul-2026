touch example_file1 example_file2 example_file3

 grep "35.237.4.214" log.txt
  grep "35.237.4.214\|13.66.139.0" log.txt
  $ grep -e "35.237.4.214" -e "13.66.139.0" log.txt
  ps 
  $ ps | grep -i tty
  $ grep -v "35.237.4.214" log.txt
   grep -o "35.237.4.214" log.txt