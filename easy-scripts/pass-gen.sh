#!/bin/bash

# Here we are going to generate some simple passwords

# cut -b 1-$1 extracts bytes from the input starting from the first byte up to the byte specified by the first argument passed to the command.
# -b specifies that cut should operate on bytes rather than the characters

PASS=`date | sha256sum | cut -b 1-$1`

echo "Your password is $PASS"

