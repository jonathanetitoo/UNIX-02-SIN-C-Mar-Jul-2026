# DFC4EF7DDAA317AC llave
gpg --list-secret-keys --keyid-format=long  # command to list private keys
gpg --armor --export-secret-keys xxxxx # exports the secret key
gpg --import MYPARTNER_public_key.asc # imports a friend's public key
gpg --list-keys # lists all keys including my friend's
$ echo "this message is secret" > unencrypted_doc.txt # message for our partner
cat unencrypted_doc.txt # verify the content was created
gpg --output encrypted_doc.txt --encrypt --recipient xxxxxxxxxxxxxxxxxxxxxxx unencrypted_doc.txt # encrypt the document
gpg --decrypt fran_encrypted.txt # decrypt the document
gpg --clearsign # sign in plain text
gpg --sign # sign in binary format
gpg --detach-sign # create a detached signature
gpg --verify # verify the received signature
gpg --edit-key Trust # assign a trust level to your partner's key
gpg --sign-key # sign your partner's key
gpg --encrypt --sign # encrypt and sign in a single command
gpg --decrypt # decrypt and validate the signature in one step
cat # check the content of the file