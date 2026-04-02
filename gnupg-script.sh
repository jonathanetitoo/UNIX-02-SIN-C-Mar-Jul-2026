## 1
uname -a #da informacion sobre el ordenador

## 2
which gpg #nos da la ubicacion del binario de gpg

## 3
gpg --version #nos dice la version de gpg e informacion adicional

## 4
gpg --full-generate-key ## generar llaves

## 5 
gpg --list-keys #lista las llaves

## 6
gpg --armor --export emilio.sebastianc@gmail.com > mi_llave_publica.asc #exporta llave publica rerigiendo a un archivo la salida estandar

## 7 
gpg --list-secret-keys --keyid-format=long # lista las called con keyid-format long

## 8
gpg --armor --export-secret-keys C896C796A2A95CF8 # exporta las llaves basandonos en el hash

## 9 
gpg --import naco.asc # importa llaves publicas de mi compa

## 10
echo "Olvidala mejor olvidala" > doc_no_cifrado.txt # imprime y guarda la salida en un archivo 

## 11
gpg --output doc_cifrado.txt --encrypt --recipient dave87821@gmail.com doc_no_cifrado.txt #enciptra para que mi compa pueda desencriptar

## 12
gpg --decrypt Cifrado.txt # desencripta el archivo que me mando mi compa

## 13
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt # firmo el documento no cifrado

## 14
cat doc_no_cifrado_firmado.txt # miro el contenido de mi archivo firmado

## 15
gpg --output doc_no_cifrado_firmado_bin.txt --sign doc_no_cifrado.txt # firmo binario

## 16
gpg --output doc_no_cifrado_firmado_detached.txt --detach-sign doc_no_cifrado.txt # firmo con archivos separados

## 17
gpg --verify signed_no_cifrado_Compa.txt # verifico el clearsigned

## 18
gpg --verify diego.txt # verficio el sign 

## 19
gpg --verify diego_detached.txt doc_no_cifrado_diego.txt # verifico el detatched

## 20
gpg --edit-key dievelozes@uide.edu.ec

## 21
gpg --sign-key dievelozes@uide.edu.ec

## 22 Genero un archivo firmado y encriptado
gpg --output doc_cifrado_y_firmado_bin.txt --encrypt --sign --recipient dievelozes@uide.edu.ec doc_no_cifrado.txt

## 23 Desencripto el archivo firmado y cifrado
gpg --output doc_validado_firmado_descifrado.txt --decrypt deifo.txt