#Este comando enlista la clave privada 
gpg --list-secret-keys --keyid-format=long
#Exporta la secret key
gpg --armor --export-secret-keys
#Importa la clave de mi compañero
gpg --import Llave_publica_Mateo.asc
#Sale el correo de mi compañero
gpg --list-keys
#Se manda un archivo de mensaje 
echo "Hola">doc_no_cifrado.txt
#Se visualiza el mensaje 
cat doc_no_cifrado.txt
#Se usa el hash para cifrar el documento 
gpg --output doc_cifrado.txt --encrypt --recipient  9E04700B2ACCDCDBC4B3794D981D97E977939DE5 doc_no_cifrado.txt
#Cifra el documento 
cat doc_cifrado.txt
#Desencrypta el mensaje cifrado 
gpg --decrypt doc_cifrado_1.txt
# Sign in clear text with --clearsign
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt
# Sign in binary format with --sign
gpg --sign doc_no_cifrado.txt
# Create a detached signature with --detach-sign
gpg --detach-sign doc_no_cifrado.txt
# Verify the received signature with gpg --verify
gpg --verify doc_no_cifrado_jose.txt.sig doc_no_cifrado_firmado_jose.txt
# Level 4 (full trust) was assigned because Jose's identity is considered fully verified.
# By signing his key with sign-key, its authenticity is certified, thus eliminating the warning message when verifying his signatures.
# Set a trust level for your partner’s key. 
gpg --edit-key isaacalmeida1353@gmail.com
#Define the level of trust for your partner’s key.
Set a trust level for your partner’s key
#Recheck the document signed by your partner to see the change in the warning message.
gpg --verify doc_no_cifrado_jose.txt.gpg
#Perform encryption and signing in one command.
gpg --output doc_cifrado_firmado_aanthony.txt.gpg --encrypt --sign --recipient 1CD26B9D8619C4DD5228E0FDCCE13056CE70816E doc_no_cifrado.txt
#Decrypt the file and verify its signature in one step.
gpg --decrypt --output verificacion_jose.txt jose_firmado.txt.gpg
