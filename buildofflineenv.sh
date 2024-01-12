#!/usr/bin/env bash
pip install --upgrade kalm >/dev/null 2>&1
MYTAR=$(pip freeze |grep kalm|awk -F"==" '{ print "kalmenv-" $2 ".tar.gz"}')
tar czf $MYTAR kalmenv/
scp $MYTAR rmkalm:

#https://artifacts.openknowit.com/files/pypisources/kalm-0.6.1.tar.gz

