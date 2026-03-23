#Este comando en lista la clave privada 
gpg --list-secret-keys --keyid-format=long
#Este es mi respaldo de mi clave privada GPG
gpg --armor --export-secret-keys EACB56901165A8B5 > private.key
