# --- Block A — Environment Setup ---
# Verify that GnuPG is installed
which gpg
gpg --version
# Generate the key pair with gpg --full-generate-key
gpg --full-generate-key
# List keys in the keyring with gpg --list-keys and gpg --list-secret-keys --keyid-format=long
gpg --list-keys
gpg --list-secret-keys --keyid-format=long

# --- Block B — Public Key Exchange ---
# Export the public key in readable format (gpg --armor --export)
gpg --armor --export darwinalcarraz@gmail.com > da_llave_publica.asc
# Import the partner's public key (gpg --import)
gpg --import Cayetano_llave_publica.asc
# Verify the import with gpg --list-keys
gpg --list-keys

# --- Block C — Encryption and Decryption ---
# Create the file doc_no_cifrado.txt with a message
echo "Hola123" > doc_no_cifrado.txt
cat doc_no_cifrado.txt
# Encrypt the file using the partner's public key (gpg --encrypt)
gpg --output doc_cifrado.txt --encrypt --recipient 59CBEBC4971494AD3CD503C6D83BBF4AAE393973 doc_no_cifrado.txt
# Decrypt the received file (gpg --decrypt) - Message from Cayetano: "Visca el Barça"
gpg --decrypt doc_cifradoCAYE.txt

# --- Block D — Document Signing ---
# Sign in clear text with --clearsign
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt
# Sign in binary format with --sign
gpg --sign doc_no_cifrado.txt
# Create a detached signature with --detach-sign
gpg --detach-sign doc_no_cifrado.txt
# Verify the received signature with gpg --verify
gpg --verify doc_no_cifrado_CayeC.txt.sig doc_no_cifrado_CayeC.txt

# --- Block E — Web of Trust ---
# WEB OF TRUST REFLECTION:
# Level 4 (Full Trust) was assigned because I fully trust Cayetano's identity.
# By signing their key with 'sign-key', I certify that the key is authentic,
# which removes the warning message (WARNING) when verifying their signatures.
# Assign a trust level to the partner's key (gpg --edit-key → trust)
gpg --edit-key caye.cordova007@gmail.com
# Sign the partner's key (gpg --sign-key)
gpg --sign-key caye.cordova007@gmail.com
# Re-verify the document signed by the partner to observe the change in the warning
gpg --verify doc_no_cifrado_CayeC.txt.gpg

# --- Block F — Simultaneous Encryption and Signing ---
# Encrypt and sign in a single command (gpg --encrypt --sign)
gpg --output final_cifrado_firmado.txt.gpg --encrypt --sign --recipient 59CBEBC4971494AD3CD503C6D83BBF4AAE393973 doc_no_cifrado.txt
# Decrypt and validate the signature in one step (gpg --decrypt)
gpg --decrypt --output verificacion_Cayetano.txt cifrado_firmado_final_CayeC.txt.gpg
# Check the contents of the resulting file with cat
cat verificacion_Cayetano.txt