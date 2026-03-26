# This command lists your private GPG keys
gpg --list-secret-keys --keyid-format=long

# This is my backup of my private GPG key
gpg --armor --export-secret-keys EACB56901165A8B5 > private.key

# Export my public key
gpg --armor --export martinfuel123@gmail.com > jt_public_key.asc

# Import my friend's public key
gpg --import micompa-public-key.asc

# Check the keys you have (public keys)
gpg --list-keys

# Send a message in a file (plain text)
echo "message is secret hello Rafael, I am Jose Martin" > doc_unencrypted.txt

# View the message
cat doc_unencrypted.txt

# Copy your friend's key ID or fingerprint
gpg --list-keys

# Encrypt the document for your friend using their key
gpg --output doc_encrypted.txt --encrypt --recipient "Rafael Patin" doc_unencrypted.txt

# View the encrypted document
cat doc_encrypted.txt

# Decrypt the message from my friend
gpg --decrypt doc_encrypted_by_patin.txt

# Sign file in clear text format
gpg --clearsign doc_no_cifrado.txt

# Sign file in binary format
gpg --sign doc_no_cifrado.txt

# Create detached signature
gpg --detach-sign doc_no_cifrado.txt

# Verify clear signed file
gpg --verify doc_no_cifrado.txt.asc

# Verify binary signed file
gpg --verify doc_no_cifrado.txt.gpg

# Verify detached signature
gpg --verify doc_no_cifrado.txt.sig doc_no_cifrado.txt

# Verify partner clear signed file
gpg --verify doc_no_cifradocompa.txt.asc
