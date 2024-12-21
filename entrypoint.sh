#!/bin/sh
source /home/bin/activate
cd /workdir
ansible-lint $@
