#Este comando lista la clave privada
gpg --list-secret-keys --keyid-format=long

#Este comentario exporta la secret key
gpg --armor --export-secret-keys 3D9C9780B6DA4C47

#Importa la llave del compañero
gpg --import anthony.asc

#Ver el correo de mi compañero
gpg --list-keys

#Mandar un mensaje al compañero a un archivo
echo "hola compa" > doc_no_cifrado.txt

#Ver el mensaje que mandamos al compañero
cat doc_no_cifrado.txt

#Se utiliza el hash para cifrar el documento
gpg --output doc_cifrado.txt --encrypt --recipient 776C4D8CE189758F90E8CAE973D05C4245F8DC04 doc_no_cifrado.txt

#Visualizar que el documento fue cifrado
cat doc_cifrado.txt

#Decifrar el mesaje enviado
gpg --decrypt doc_cifrado_anthony.txt