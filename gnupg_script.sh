# FE4931AAC42C6434 llave
# comando para lista privada gpg --list-secret-keys --keyid-format=long 
# exporta la llave secreta gpg --armor --export-secret-keys FE4931AAC42C6434 
# para compartir mi llave publica gpg --import llave_publica_de_Cris.asc 
# lista de llaves incluida de mi amigo gpg --list-keys 
# mensaje para nuestro compa echo "Hola hehehe" > doc_no_cifrado.exe 
# verificar el comentario enviado a nuestro compa cat doc_no_cifrado.txt 
# gpg --output doc_no_cifrado.txt --encrypt --recipient XXXXXXXXXXXXXXXXXXXXXXXXXX doc_no_cifrado.txt CIFRA EL DOCUMENTO
# Verificar que GnuPG está instalado which gpg / gpg --version
# Generar el par de llaves con gpg --full-generate-key
# Listar las llaves del llavero con gpg --list-keys y gpg --list-secret-keys --keyid-format=long
# Exportar la llave pública en formato legible gpg --armor --export
# Compartir la llave pública con su pareja
# Importar la llave pública de su pareja gpg --import
# Verificar la importación con gpg --list-keys
# Crear el archivo doc_no_cifrado.txt con un mensaje
# Cifrar el archivo usando la llave pública de su pareja gpg --encrypt
# Compartir el archivo cifrado con su pareja
# Descifrar el archivo recibido gpg --decrypt
# Firmar en texto claro con --clearsign
# Firmar en formato binario con --sign
# Crear una firma separada con --detach-sign
# En cada caso: compartir con la pareja y verificar la firma recibida con gpg --verify
# Asignar un nivel de confianza a la llave de su pareja gpg --edit-key → trust
# Firmar la llave de su pareja gpg --sign-key
# Volver a verificar el documento firmado por su pareja para observar el cambio en la advertencia
# Cifrar y firmar en un solo comando gpg --encrypt --sign
# Compartir el archivo con su pareja
# Descifrar y validar la firma en un solo paso gpg --decrypt
# Comprobar el contenido del archivo resultante con cat