Encryption and Signatures with GNUPG
#Bloque A
@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ uname -a #We can see information about our computer’s architecture and system.
Linux codespaces-9db7a6 6.8.0-1044-azure #50~22.04.1-Ubuntu SMP Wed Dec  3 15:13:22 UTC 2025 x86_64 x86_64 x86_64 GNU/Linux
@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ which gpg # we can find the location of the GPG program
/usr/bin/gpg
@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --version #we can see the installed GPG version
gpg (GnuPG) 2.4.4
libgcrypt 1.10.3
Copyright (C) 2024 g10 Code GmbH
License GNU GPL-3.0-or-later <https://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Home: /home/codespace/.gnupg
Supported algorithms:
Pubkey: RSA, ELG, DSA, ECDH, ECDSA, EDDSA
Cipher: IDEA, 3DES, CAST5, BLOWFISH, AES, AES192, AES256, TWOFISH,
        CAMELLIA128, CAMELLIA192, CAMELLIA256
Hash: SHA1, RIPEMD160, SHA256, SHA384, SHA512, SHA224
@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --full-generate-key #we can create a new GPG key
gpg (GnuPG) 2.4.4; Copyright (C) 2024 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

gpg: directory '/home/codespace/.gnupg' created
gpg: keybox '/home/codespace/.gnupg/pubring.kbx' created
Please select what kind of key you want:
   (1) RSA and RSA
   (2) DSA and Elgamal
   (3) DSA (sign only)
   (4) RSA (sign only)
   (9) ECC (sign and encrypt) *default*
  (10) ECC (sign only)
  (14) Existing key from card
Your selection? 1
RSA keys may be between 1024 and 4096 bits long.
What keysize do you want? (3072) 4096
Requested keysize is 4096 bits
Please specify how long the key should be valid.
         0 = key does not expire
      <n>  = key expires in n days
      <n>w = key expires in n weeks
      <n>m = key expires in n months
      <n>y = key expires in n years
Key is valid for? (0) 1y
Key expires at Sat Mar 20 15:40:39 2027 UTC
Is this correct? (y/N) y

GnuPG needs to construct a user ID to identify your key.

Real name: DIANA CAMILA VILLAGRAN PARRALES
Email address: dianacamilux@gmail.com
Comment: mi primera llave 
You selected this USER-ID:
    "DIANA CAMILA VILLAGRAN PARRALES (mi primera llave) <dianacamilux@gmail.com>"

Change (N)ame, (C)omment, (E)mail or (O)kay/(Q)uit? O
We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
gpg: /home/codespace/.gnupg/trustdb.gpg: trustdb created
gpg: directory '/home/codespace/.gnupg/openpgp-revocs.d' created
gpg: revocation certificate stored as '/home/codespace/.gnupg/openpgp-revocs.d/E135CD456C72232ACA436A2119944ACFDF91C658.rev'
public and secret key created and signed.

pub   rsa4096 2026-03-20 [SC] [expires: 2027-03-20]
      E135CD456C72232ACA436A2119944ACFDF91C658
uid                      DIANA CAMILA VILLAGRAN PARRALES (mi primera llave) <dianacamilux@gmail.com>
sub   rsa4096 2026-03-20 [E] [expires: 2027-03-20]

@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --list-keys #we can see our GPG keys
gpg: checking the trustdb
gpg: marginals needed: 3  completes needed: 1  trust model: pgp
gpg: depth: 0  valid:   1  signed:   0  trust: 0-, 0q, 0n, 0m, 0f, 1u
gpg: next trustdb check due at 2027-03-20
/home/codespace/.gnupg/pubring.kbx
----------------------------------
pub   rsa4096 2026-03-20 [SC] [expires: 2027-03-20]
      E135CD456C72232ACA436A2119944ACFDF91C658
uid           [ultimate] DIANA CAMILA VILLAGRAN PARRALES (mi primera llave) <dianacamilux@gmail.com>
sub   rsa4096 2026-03-20 [E] [expires: 2027-03-20]

@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg  -armor --export
-----BEGIN PGP PUBLIC KEY BLOCK-----

mQINBGm9awYBEADLGnRrIlFKqJfZ/fjCO0ngIkJ2n/sQ0y4T9QFgWDi0u0r65sW+
bQkZqBNJ3IpsAhw8nsAeFikQJXfK49SXtfU1atOLqFTR2BYy6nIBmlS0ql2hRFDP
BQysd4mbRNAGSNPgTJx0R/ZdhtrcR7lKblfOr8qkUcaTw9B3k34kVgshMaY4wrJJ
VR06j6bL/PpNvg3kZ5e8mrKKCycrwvtJDHXgxtX8I5BaBMXI9EFUo0iCWXI23Zf8
NDqbzVdY+OrqFyEWx0qMU/cOVuuPVsQBgsTAkLhz09ctDTgiosP5bw4yu8rZXFS7
Dy/7EfdJ1jXQnC6dOaMO44ly7CeC/F0Nyua5gAx3kGxIqZzZYq/ZA59XE/iIqdco
BiZCvV3EELrg/gpuO8O6uBGcQZpRMIcvi/a0YPxFD38M5AHulceQClkNXNcq5xlz
FGQnzBBWlZvZuKnvFkhiPySjx9r/YSbou9gtKM+YIPYyHUhRSfKUNmwRHayU7mhP
iZ0ivRYAbcY9taXeb6aFgVUYAa1r2axnKxoejBM5P/WYRmfcTV4wsWpBRU57QTd8
gFkA8qzc/l4ofU8ZUL6H6pjNBJ831/3ref+StIqFcP5unkCx0k+KUePIGbeVkMyK
mY6/F+jaXlrOugzvOAu8RbRjP4YCOu9Bjf3qQZ5nMDM/IIjbxx2lZcyqPQARAQAB
tEtESUFOQSBDQU1JTEEgVklMTEFHUkFOIFBBUlJBTEVTIChtaSBwcmltZXJhIGxs
YXZlKSA8ZGlhbmFjYW1pbHV4QGdtYWlsLmNvbT6JAlcEEwEKAEEWIQThNc1FbHIj
KspDaiEZlErP35HGWAUCab1rBgIbAwUJAeEzgAULCQgHAgIiAgYVCgkICwIEFgID
AQIeBwIXgAAKCRAZlErP35HGWFiVD/9TDYg+Av2HQt4vjXVtei+3bI0kxTgz5w9N
b1nUTps5oklTOXkWy2rr+G5CFG5B4saOH7SHyS+RulCvHU2FyygMXPFQso1qX20i
tigX7e8I++T3Xo6vCPR+HNJM2/DyjTKvRcJNfijS6KHp5PDouvmNiI5kW9dj9BRJ
Wtyau4lEGTkk7lw1v3UfCbiFv3/r+AqeHqqHQeDWHzdvX0tGL3H6roQZNyU+aX/6
zTQEK8Z3T2io5gDX3eNvaWnkWjbZkWG5RPbXnch9UUPft3V68fzdakXK7DspJky+
q6aD5T731spRspYDI7MgfUhIJ2/YPvG6fz8BL+M8OFQNQaRvafpHnxG3ZyNMkwno
Vch/3cRM8zeB+pCcXHRYCyiBZcDHcqNYc5EPja9tYGihTAe3UpRA/zjZwyD2jVZM
Ev6kv8G6l57isY+k6fTug+b4uZbnQulF+1oj/gj0OTzjBPI/nwvk1D3DSm2+ovjF
CPmmOZijaPC9Myvey7ZNC3RY0JRkbaG02XRGzHCt+UnZbMKG+qulTAkcV25Xxw2A
6QdtbMWHV0eKsAyO/JXFKaZQfnggsXmDKV/ZP6aSiFpbP1EBERkGR1/YVCIo/vcv
zI+dkGWkBfPErTQMg0ww6E5bbcyE2CaiyoNdnyRJV4T9Hl5Bo2BfBpy8M0IFpCmo
iG8ybARzCbkCDQRpvWsGARAA2/dbTTugv1lUadFjS0vSuf+xyHZ7SR00/dd+kz17
QRjBpK2tlcTv0GviJ2qqIRqBx1GT+ZIrTg5VCjC9GtKzXpLuHrp/MMd6Zyj5mie6
gVwCnXB7k9lcXsw2INS1FFOPTsrQK9KCnj4dpqHL4tfbC+FaPQAf3Va0SieIQ+HF
+4gz0dRQ3Aq99fUd4uisYuPAsV2OB8D57bTPYfvnffBiRWU9hocKdtOf8g+yaJgK
qErkFVJhxWzV5HyHzcgA9EqlSvyFv5Us7up3iPQeRRYOoKdlRc0lVGWTsGZ+fn4g
kokpQYZOYtxsllAzPotaBItVPd+uqhq52Xb+r5rNi3buKj7Tgf3b1PlEGSIxKr5K #My public key
RLDwyAcWtVRSQDejPNymDvlUtxrpLdy7+h+cm0pu1gN7rLeHWdQvIvuLP3fEAWMq
wtxdNoCzUvSCC9C7ei5tlBmnnGzgv30H4C1YII8k32OEG5IR9WBaoMw/M0JrrLaC
E5RjAKgTQYTkZ9heSqE1Zv/Ase2I6JF+hq2DDRfOWT59185wox4UIPzF2ytaYG1j
s54C109g96Rb5kUVlndl/lN20YQQomF3R4B/6MsxKAg9xKyFnb7JCbOtvhjWuDEZ
mp7GVpo5lWVO6EhL+BusqjTV47VgJAMgJVN92qVgrjS+M4Hp91nKT5qY3o+GxBMd
hScAEQEAAYkCPAQYAQoAJhYhBOE1zUVsciMqykNqIRmUSs/fkcZYBQJpvWsGAhsM
BQkB4TOAAAoJEBmUSs/fkcZYsQEQAI6LMkKOivtVn3NA0fSpEdXwhF5VoFLFHJxU
tY1IdZ3f6/FCuCtUnV4GdzQeiPuIkpIfsJeGWuXO7KjlusUaxizdTk5rP/H8HTDX
MceW69JV9wHe4eT9kQiPXhNBV6zlyOzyDbZJOUvq5D2botjt8ao8oGyQEACaVH94
vuL7VM6jve9PIr+D557f9ofqRWearZIzteoAyWoDHqsRBS/FIVQr5Q1KCorXX2oz
VjS3kkprmQY3NUW7QnXZ8gDVzdtozTcQgPYsRmnJzBD0LrMHZ5J7R/5WNLbLDh3M
jYrUYdrH/MkSecZdGRpwpWkOYH/rqnxiotGRoINQkcjFkkx/Rq2qiHS7KxLoza1O
KOviYTo9uRg28fyxnW4+LYxWzJyytSITj4zB+ieinLrFbifxvRpwbVBz9as/zsUJ
8fMJvPkmptXQ2jLCla4hy6mEFSX50xVsEBjlXrgY9B013LqhwavM/4CJP3uXvkKw
eNJ9jdfAUzp4gl9ln9vZZfFtp5lwzsPU0MIdSkplBloujPcYFDS6JoxQLUiKhAeE
cFht4Gg698P82nWNPU4hup8PCMyboUVEwIgJDvP7Jh8lXpM4uvN257jGLXv6CF+d
nV64z/R68mSADistuCIaC32WoWcCoYcQyuSUq7IDLYgF3IYjrymBO22iocqu7N/e
v5BBpTix
=kFRF
-----END PGP PUBLIC KEY BLOCK-----
@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --list-secret-keys --keyid-format=long # command, we can see our secret keys
/home/codespace/.gnupg/pubring.kbx
----------------------------------
sec   rsa4096/2DB5E37DF317D30F 2026-03-26 [SC] [expires: 2027-03-26]
      88A7487A82842216C00562222DB5E37DF317D30F
uid                 [ultimate] Diana Camila Villagran Parrales (llavee) <dianacamilux@gmail.com>
ssb   rsa4096/2B5ACECD7F399731 2026-03-26 [E] [expires: 2027-03-26]

@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --armor  --export dianacamilux@gmail.com > mi llave_publica.asc #command, we export a public key to a file
sec   rsa4096/2DB5E37DF317D30F 2026-03-26 [SC] [expires: 2027-03-26]
      88A7487A82842216C00562222DB5E37DF317D30F
uid                 [ultimate] Diana Camila Villagran Parrales (llavee) <dianacamilux@gmail.com>
ssb   rsa4096/2B5ACECD7F399731 2026-03-26 [E] [expires: 2027-03-26]

#Bloque B
@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --list-keys #At first we can list our keys 
/home/codespace/.gnupg/pubring.kbx
----------------------------------
pub   rsa4096 2026-03-23 [SC] [expires: 2027-03-23]
      C0940405536BDA498D561C15BCE14E7DCA73AB9B
uid           [ultimate] Diana Camila Villagran Parrales (mi primera llave) <dianacamilux@gmail.com>
sub   rsa4096 2026-03-23 [E] [expires: 2027-03-23]

@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --import llave_esposa_publica.asc #Then my friend Danna gives me her public key, then i created an archive whin her public key
gpg: key 1F0C857FC076602F: public key "DANNA ALEJANDRA SIMALUISA QUIZHPI (mi primera llave en la terminal) <dannaalejandra008@gmail.com>" imported #Whit that command i exported her public key 
gpg: Total number processed: 1 #As a result i can see her email
gpg:               imported: 1
$ gpg --list-keys #Now we exported again our keys list
/home/codespace/.gnupg/pubring.kbx
----------------------------------
pub   rsa4096 2026-03-23 [SC] [expires: 2027-03-23]
      C0940405536BDA498D561C15BCE14E7DCA73AB9B
uid           [ultimate] Diana Camila Villagran Parrales (mi primera llave) <dianacamilux@gmail.com> #Thiis my key list
sub   rsa4096 2026-03-23 [E] [expires: 2027-03-23]

pub   rsa4096 2026-03-20 [SC] [expires: 2027-03-20]
      28140176FF2A98AD077AE20F1F0C857FC076602F
uid           [ unknown] DANNA ALEJANDRA SIMALUISA QUIZHPI (mi primera llave en la terminal) <dannaalejandra008@gmail.com> #This is her key list
sub   rsa4096 2026-03-20 [E] [expires: 2027-03-20]
#Bloque C
@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ echo "Hola dannitaaaaaaaa" > doc_no_cifrado.txt #With that command we send a message with an archive txt
@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --output doc_cifrado.text --encrypt --recipient   28140176FF2A98AD077AE20F1F0C857FC076602F #With that command encrypt the archive with the hash 
gpg: AC240ACED367542D: There is no assurance this key belongs to the named user

sub  rsa4096/AC240ACED367542D 2026-03-20 DANNA ALEJANDRA SIMALUISA QUIZHPI (mi primera llave en la terminal) <dannaalejandra008@gmail.com>
 Primary key fingerprint: 2814 0176 FF2A 98AD 077A  E20F 1F0C 857F C076 602F
      Subkey fingerprint: EFAB 87FA 5BC0 673D 0FBE  95E7 AC24 0ACE D367 542D

It is NOT certain that the key belongs to the person named
in the user ID.  If you *really* know what you are doing,
you may answer the next question with yes.

Use this key anyway? (y/N) y

@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ cat doc_cifrado.txt #With that command we can see the content in that case doc cifrado
�
 �$
��gT-�[esg+̉�#����U�({�yb��\,��/��Ѿ��� ]d�:V�J��,�[�.�'b�$�`��|:c�*^�;��tS�yy�c1
                                                                               g#�a���i���ߧ_�����0��-Ě#D%jR�#,40�e����c�@�L�am�
                                                                                                                               J'����o&���vO�C�D��r{����#��t��6~�o���Oa�W��,��\E��C�<KD!&��4k$��
U�Mqam�ǻѹ>Ʒ������s�CH6�w7IR�4WH�r��~���I��
                                          {b$"��Fr��>��`U�&R�\�R<쟵���%>���0v��g��}�[6��!+3V*l��)���=1�oD��$#�z�,�0�I#�-Ϻ:g!��4�2,�D����ԙw�^����2�y�'~�bKn�����ڧ�&��B���lͶ��p�T�q�^��D����|s�(��!�䣋����G�H���PoU&�  ���b�k���}�s�u���~�ôEߋ^���ݫx9@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ 

@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --decrypt esposa_doc_cifrado #With that command we can see the message that my friend send me like a encrypt txt text
gpg: encrypted with rsa4096 key, ID EC071FDE9F8261CE, created 2026-03-23
      "Diana Camila Villagran Parrales (mi primera llave) <dianacamilux@gmail.com>"
Hola Cami t amo #we see txt text she send me
#Bloque D
@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt #With that command command, we sign a file
@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ cat doc_no_cifrado_firmado.txt
-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Hola dannitaaaaaaaa
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEiKdIeoKEIhbABWIiLbXjffMX0w8FAmnEjwsACgkQLbXjffMX
0w/Lng//Yo238H93Ud10ZOVB4hr+/O7LP1foMeflGBjB2mQSO+lF6IfoKstrO7ks
kOMgZVN6Y+lsb7TI30AZFAejokXmduHkiki8yNVsOtKd8aEIamiiNCtS0cJWYuET
FypndQFB4pJuPZ/4WXt1xh2bql5In4Hg1OcPXHJc/Yrvvo56SuhMhnBNGbeFHHkb
Zn0WkasFrn1mYxsatu1qKGvsjePn+wt7F2SQnhfWHmpg+M3bWX0760otVXyyCNec
FRSYr3K/R7qmNhKx37V+J30eafzfsHKWwMXrJ/l1mIhMVyzB5wh5jlVxFmUcNYQU
f02QAMJV+MpyDoZ9q0QBZ4pt1yY5zThE8O+qEGy1PUUBcDK/TW/Ho4CvX/CTtfTA
Wqqy8LpPwd+Mjnt6AhfL9rcUveCtIw/+bYMFRNRgFMd1d5DIm9f5B+hCNYwaJuta
2brdqTLzXbfmtKyfISOaMY6mf/Sy4Tl9xKaVX5DzswJjeHcPsh1q1OBK5ySTzVxG
MZPhuXmE6DdMsdBxkvVGGr3xOJbFvH83q8M3BoKH4iVOBzDHoRo8hRUdqqIupNcd
bx8Vs56sgczLVOaCy4J6YyKe6g4n7yKLd8qpm4vOedHu6uVKjb/XfeB08Z8BCjv1
FUTJHOSB0EyIOwJ46lh0FvVfnIi95kgtFZ/PdwJXsHgrPQ5NAlM=
=IvpP
-----END PGP SIGNATURE-----

@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --verify esposa_doc_no_cifrado_firmado.txt #command checks if the signature of the file is valid
gpg: Signature made Mon Mar 23 15:44:09 2026 UTC
gpg:                using RSA key 28140176FF2A98AD077AE20F1F0C857FC076602F
gpg: Good signature from "DANNA ALEJANDRA SIMALUISA QUIZHPI (mi primera llave en la terminal) <dannaalejandra008@gmail.com>" [full]

@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --edit-key 28140176FF2A98AD077AE20F1F0C857FC076602F # A command, we can give a vote of trust to a key
gpg (GnuPG) 2.4.4; Copyright (C) 2024 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
pub  rsa4096/1F0C857FC076602F
     created: 2026-03-20  expires: 2027-03-20  usage: SC  
     trust: full          validity: full
sub  rsa4096/AC240ACED367542D
     created: 2026-03-20  expires: 2027-03-20  usage: E   
[  full  ] (1). DANNA ALEJANDRA SIMALUISA QUIZHPI (mi primera llave en la terminal) <dannaalejandra008@gmail.com>
gpg> trust
pub  rsa4096/1F0C857FC076602F
     created: 2026-03-20  expires: 2027-03-20  usage: SC  
     trust: full          validity: full
sub  rsa4096/AC240ACED367542D
     created: 2026-03-20  expires: 2027-03-20  usage: E   
[  full  ] (1). DANNA ALEJANDRA SIMALUISA QUIZHPI (mi primera llave en la terminal) <dannaalejandra008@gmail.com>

Please decide how far you trust this user to correctly verify other users' keys
(by looking at passports, checking fingerprints from different sources, etc.)

  1 = I don't know or won't say
  2 = I do NOT trust
  3 = I trust marginally
  4 = I trust fully
  5 = I trust ultimately
  m = back to the main menu

Your decision? 4
pub  rsa4096/1F0C857FC076602F
     created: 2026-03-20  expires: 2027-03-20  usage: SC  
     trust: full          validity: full
sub  rsa4096/AC240ACED367542D
     created: 2026-03-20  expires: 2027-03-20  usage: E   
[  full  ] (1). DANNA ALEJANDRA SIMALUISA QUIZHPI (mi primera llave en la terminal) <dannaalejandra008@gmail.com>


@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --sign-key 28140176FF2A98AD077AE20F1F0C857FC076602F #with that command we can sign a key
     created: 2026-03-20  expires: 2027-03-20  usage: SC  
     trust: full          validity: full
sub  rsa4096/AC240ACED367542D
     created: 2026-03-20  expires: 2027-03-20  usage: E   
[  full  ] (1). DANNA ALEJANDRA SIMALUISA QUIZHPI (mi primera llave en la terminal) <dannaalejandra008@gmail.com>

"DANNA ALEJANDRA SIMALUISA QUIZHPI (mi primera llave en la terminal) <dannaalejandra008@gmail.com>" 

Really sign? (y/N) y

@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --verify esposa_doc_no_cifrado_firmado.txt #With that command, we verify a signed file.
gpg: Signature made Mon Mar 23 15:44:09 2026 UTC
gpg:                using RSA key 28140176FF2A98AD077AE20F1F0C857FC076602F
gpg: Good signature from "DANNA ALEJANDRA SIMALUISA QUIZHPI (mi primera llave en la terminal) <dannaalejandra008@gmail.com>" [full]

@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --output doc_no_cifrado_firmado_binario.txt --sign doc_no_cifrado.txt #With that command, we create a binary signed file
@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --verify esposa_doc_no_cifrado_firmado_binario.txt #we verify the signature of the binary signed file
gpg: Signature made Thu Mar 26 03:56:01 2026 UTC
gpg:                using RSA key 28140176FF2A98AD077AE20F1F0C857FC076602F
gpg: Good signature from "DANNA ALEJANDRA SIMALUISA QUIZHPI (mi primera llave en la terminal) <dannaalejandra008@gmail.com>" [full]

@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --verify esposa_firma_separada_doc_no_cifrado.sig esposa_doc_no_cifrado.txt #With that command, we verify a detached signature.
gpg: Signature made Thu Mar 26 16:56:02 2026 UTC
gpg:                using RSA key 28140176FF2A98AD077AE20F1F0C857FC076602F
gpg: Good signature from "DANNA ALEJANDRA SIMALUISA QUIZHPI (mi primera llave en la terminal) <dannaalejandra008@gmail.com>" [full]

@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --list-keys
/home/codespace/.gnupg/pubring.kbx
----------------------------------
pub   rsa4096 2026-03-20 [SC] [expires: 2027-03-20]
      28140176FF2A98AD077AE20F1F0C857FC076602F
uid           [  full  ] DANNA ALEJANDRA SIMALUISA QUIZHPI (mi primera llave en la terminal) <dannaalejandra008@gmail.com>
sub   rsa4096 2026-03-20 [E] [expires: 2027-03-20]

pub   rsa4096 2026-03-26 [SC] [expires: 2027-03-26]
      88A7487A82842216C00562222DB5E37DF317D30F
uid           [ultimate] Diana Camila Villagran Parrales (llavee) <dianacamilux@gmail.com>
sub   rsa4096 2026-03-26 [E] [expires: 2027-03-26]

@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --output doc_cifrado_y_firmado.txt --encrypt --sign --recipient 28140176FF2A98AD077AE20F1F0C857FC076602F doc_no_cifrado.txt #This command encrypts and signs the document
��$
��gT-�q��A����IܳҨ˃�j��KٽJUq4�?n2ZYS�hG2N��X�UgX��>�����v�����S�&�ޞ�2.��b�a�P���J&�lZ��iO4���kW�y�-77IS��ad��7v�ݮ�>�@tSz�k�X�E����Ӹ����L�]��\��c\%ͣ��X�m����M%���{��o!(S�?;}}�Z0\��.ُ|�Z��p���;�bS{�y����t��ekJ�U���X�X7�F˱6���z���O���ݚ�u�n��8����F�9QM�.}u'��2=�ʚm�ލ����؇S�E�'��_�A�Y�1E���JK�#�H�k�")v�Z�(]̝7�F�&�:ºn%5qu��
�;6� ��1#{F�F%��ϰBX7
7{=����@6�ߟ��:
@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ gpg --output doc_cifrado_y_firmado_descifrado_y_validado.txt --decrypt esposa_doc_cifrado_y_firmadoo.txt #With that command, we decrypt and verify the signed file
gpg: encrypted with rsa4096 key, ID 2B5ACECD7F399731, created 2026-03-26
      "Diana Camila Villagran Parrales (llavee) <dianacamilux@gmail.com>"
gpg: Signature made Thu Mar 26 17:32:04 2026 UTC
gpg:                using RSA key 28140176FF2A98AD077AE20F1F0C857FC076602F
gpg: Good signature from "DANNA ALEJANDRA SIMALUISA QUIZHPI (mi primera llave en la terminal) <dannaalejandra008@gmail.com>" [full]
@Dicami ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (main) $ cat doc_cifrado_y_firmado_descifrado_y_validado.txt #we display the content of the decrypted file
Hola Cami t amo #The message 
