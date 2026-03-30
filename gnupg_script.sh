#Bloque A
#Verify that GnuPG is installed
which gpg / gpg --version 
#Generate the key pair
gpg --full-generate-key
#This command lists the private key
gpg --list-secret-keys --keyid-format=long

#Bloque B
#Export my key
gpg --armor --export drafaelpatin@gmail.com > key_friend
#Import my friend 
key gpg --import llave_amigo
#List the keys
gpg --list-keys
#Hash
678FEA3F7A530BBB

#Bloque C
#Send a message
echo "hola martin jaja" > doc_no_cifrado.txt

#See the message 
cat doc_no_cifrado.txt

#Encrypt the file using my partner's public key.
gpg --encrypt 

#decrypt the file
gpg --decrypt 

#Bloque D
# Create a cleartext signature
gpg --clearsign doc_no_cifrado.txt

# Create a signature in binary format
gpg --sign doc_no_cifrado.txt

# Create a separate signature
gpg --detach-sign doc_no_cifrado.txt

#Verification of all signature types from partner
#1 Verifying cleartext signature (.asc)
gpg --verify "doc_no_cifrado.txt martin.asc"

#2 Verifying binary signature (.gpg)
gpg --verify "doc_no_cifrado.txt martin.gpg"

#Bloque E
#Assigning trust level 4 (Full Trust) to José Martín's key
#Reflection: I assigned full trust (level 4) because I verified my 
#partner's identity personally during class and we exchanged 
#public keys directly. This removes the trust warnings during verification.
gpg --edit-key "martinfuel123@gamil.com"

#Signing the partner's key to certify identity
gpg --sign-key "martinfuel123@gamil.com"

#Bloque F
#Command to encrypt and sign a file for the partner
gpg --encrypt --sign --recipient "martinfuel123@gamil.com" doc_no_cifrado.txt

#Encrypt and sign a file (using my own recipient for testing)
gpg --encrypt --sign --recipient "drafaelpatin@gmail.com" doc_no_cifrado.txt
#Decrypt and verify the file
gpg --decrypt doc_no_cifrado.txt.gpg

#Check the final content of the decrypted file
cat doc_no_cifrado.txt