#!/bin/bash

export REGDB_AUTHOR=ravion
make

openssl x509 -in "$REGDB_AUTHOR".x509.pem -inform PEM -outform DER | xxd -i -c 8 > "$REGDB_AUTHOR".hex
