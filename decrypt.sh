#! /bin/bash

# enrypt:
# cat info.txt | openssl enc -aes-192-cbc -pbkdf2 --pass pass:$1 | xxd -p -c 102400 > ai.txt

# decrypt:
cat ai.txt | xxd -p -c 102400 -r | openssl enc -d -aes-192-cbc -pbkdf2 -pass pass:$1
