id
#see all groups 
id -gn 
#just see de principal group
touch ~/test_grupo_heredado.txt 
ls -la ~/test_grupo_heredado.txt 
#create a file and see the groups 
groups 
#see the all available groups 
id -gn 
#see the current group
touch ~/antes_de_newgrp.txt
ls -la ~/antes_de_newgrp.txt
#create a file before newgrp 