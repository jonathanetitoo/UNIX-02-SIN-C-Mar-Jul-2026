#Este comando en lista la clave privada
gpg --list-secret-keys --keyid-format=long
#Exportar secret key
gpg --armor --export-secret-keys 981D97E977939DE5
#Importar llave de mi amigo
gpg --import llave_anthony.asc
#Comprobar
gpg --list-keys
#Se manda un archivo de mensaje
echo "hola estoy contandote un secretito" > doc_no_cifrado.txt
#Veo el mensaje
cat doc_no_cifrado.txt
#Copio el hash de mi amigo
gpg --list-keys
#Con el hash cifro el documento
gpg --output doc_cifrado.txt --encrypt --recipient 776C4D8CE189758F90E8CAE973D05C4245F8DC04 doc_no_cifrado.txt
#Se ve doc cifrado
cat doc_cifrado.txt
#Decifro el mensaje de mi amigo
gpg --decrypt doc_cifrado_1.txt
#--D block
# Sign the file in plain text using --clearsign
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt
# Generate a signature in binary format with the --sign option
gpg --sign doc_no_cifrado.txt
# Create a separate signature using --detach-sign
gpg --detach-sign doc_no_cifrado.txt
# Validate a received signature with the command gpg --verify
gpg --verify doc_no_cifrado_anthony.txt.sig doc_no_cifrado_anthony.txt
# --E block
# REFLECTION ON WEB OF TRUST:
# Level 4 (full trust) was established because there is complete certainty about Anthony's identity.
#This causes the warning to disappear when their signatures are verified.
# Set the trust level for the peer's key (gpg --edit-key → trust)
gpg --edit-key herrerael823@gmail.com
# Sign the peer's key (gpg --sign-key)
gpg --sign-key herrerael823@gmail.com
# Verify the file signed by the peer again to note the change in the warning
gpg --verify doc_no_cifrado_anthony.txt.gpg
# --F block
# Perform encryption and signing in a single step (gpg --encrypt --sign)
gpg --output jose_firmado.txt.gpg --encrypt --sign --recipient 776C4D8CE189758F90E8CAE973D05C4245F8DC04 doc_no_cifrado.txt
# Decrypt the file and verify the signature simultaneously (gpg --decrypt)
gpg --decrypt --output verification_anthony.txt doc_cifrado_firmado_aanthony.txt.gpg
# Review the contents of the generated file using cat
cat verification_anthony.txt