# This command lists your private GPG keys
gpg --list-secret-keys --keyid-format=long

# This is my backup of my private GPG key
gpg --armor --export-secret-keys EACB56901165A8B5 > private.key

# Export my public key
gpg --armor --export martinfuel123@gmail.com > jt_public_key.asc

# Import my friend's public key
gpg --import micompa-public-key.asc
