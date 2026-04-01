gpg --list-key s #This command lists the key.
gpg --list-secret-keys --keyid-format=long #This command lists the private key.
gpg --armor --export-secret-keys D83BBF4AAE393973 #This command exports the private key.
gpg --import Darwin #Public key export.
gpg -armor --export caye.cordova007@gmail.com > mi_clave_publica.asc #Export your public key to a file.
gpg --import Darwin_llave.asc #Import my partners key.
echo "Visca el Barça" > doc_no_cifrado.txt #Save the message in a file called doc_no_cifrado.txt.
cat doc_no_cifrado.txt #Shows file content.
gpg --output doc_cifrado.txt --encrypt --recipient 3B2211E8DC099B0EA44E29FE7A7737A898E97587 doc_no_cifrado.txt #Encrypt a file with the public key.
gpg --decrypt doc_cifrado_daral.txt #Decryption of your partner file
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado #Sign the file
gpg --sign doc_no_cifrado.txt #Create a compressed file containing the original document and the signature.
gpg --detach-sign doc_no_cifrado.txt #Create a small, standalone file that contains only the signature.
gpg --verify doc_no_cifradoDarwinAl.txt.sig #Verify the signature of the file.
gpg --edit-key "NOMBRE" #Allows you to manage, modify, and adjust the trust levels of a specific public key.
gpg --sign-key "NOMBRE" #Digitally sign someone else's public key in your GPG keyring.
gpg --encrypt --sign #It is used to encrypt and digitally sign a file in a single step
gpg --decrypt final_cifrado_firmadoDarwinAl.txt.gpg #Decrypt and verify a file that has been both encrypted and signed.
cat  final_cifrado_firmadoDarwinAl.txt.gpg #Show the content of the decrypted file.