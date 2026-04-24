    git fetch upstream
git checkout -b eval_p2_1_v1 upstream/eval_p2_1_v1
git push -u origin eval_p2_1_v1
    1  git fetch upstream
    2  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_v1
    3  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_g1
    4  git push -u origin eval_p2_1_v1
    5  history
    6  mv notas apuntes
    7  ls
    8  cd 
    9  cd evaluation 
   10  cd UNIX-02-SIN-C-Mar-Jul-2026
   11  ls
   12  cd cd orion
   13  cd orion
   14  cd workspaces
   15  cd evaluation 
   16  cd workspaces
   17  ls
   18  cd java nvm
   19  cd UNIX-02-SIN-C-Mar-Jul-2026
   20  cd eval_p2_1_v1
   21  ls
   22  cd evaluation
   23  mv notas apuntes
   24  ls
   25  cd orion
   26  mv notas apuntes
   27  mkdir respaldos
   28  cd evaluation 
   29  cd workspaces
   30  git add .
   31  git commit -m "Fix problema 1: estructura de directorios corregida"
   32  git push
   33  mv telemetria.log apuntes/
   34  mv config.tmp config.conf
   35  ls
   36  ls apuntes
   37  git add .
   38  git commit -m "Fix problema 2: archivos movidos y renombrados"
   39  git push
   40  chmod 640 apuntes/telemetria.log
   41  ls -l apuntes
   42  git add .
   43  git commit -m "Fix problema 3: permisos numericos 640 en telemetria.log"
   44  git push
   45  ls -l apuntes
   46  git add .
   47  git commit -m "Fix problema 3: permisos numericos 640 en telemetria.log"
   48  ls -l
   49  chmod u+x script.sh
   50  chmod o-w config.conf
   51  ls -l
   52  git add .
   53  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   54  git push
   55  chmod u+s script.sh
   56  ls -l script.sh
   57  git add .
   58  git commit -m "Fix problema 5: SUID activado en script.sh"
   59  git push
   60  chmod +t /tmp/orion_zone
   61  mkdir -p /tmp/orion_zone
   62  chmod +t /tmp/orion_zone
   63  ls -ld /tmp/orion_zone
   64  chmod o+x /tmp/orion_zone
   65  ls -ld /tmp/orion_zone
   66  git add .
   67  git commit -m "Fix problema 6: sticky bit en /tmp/orion_zone"
   68  git push
   69  gpg --full-generate-key
   70  gpg --encrypt --recipient lyra@orion.lab apuntes/telemetria.log
   71  gpg --list-keys
   72  gpg --encrypt -r lyra@orion.lab --trust-model always apuntes/telemetria.log
   73  gpg --full-generate-key
   74  gpg --list-keys
   75  gpg --encrypt --recipient lyra@orion.lab apuntes/telemetria.log
   76  ls apuntes
   77  git add .
   78  git commit -m "Fix problema 7: llave GPG generada y telemetria.log cifrado"
   79  git push
   80  gpg --clearsign config.conf
   81  ls
   82  gpg --verify script.sh.sig script.sh
   83  gpg --detach-sign -o script.sh.sig script.sh
   84  gpg --verify script.sh.sig script.sh
   85  git add .
   86  git commit -m "Fix problema 8: firmas GPG corregidas y creadas"
   87  git push
   88  history