#!/bin/bash

# Build for MQ80


set -e -u

COMMIT=$(git log --format=format:%h --max-count=1)

echo -$COMMIT > localversion

make chamsys_mq80_defconfig
make bindeb-pkg -j4



