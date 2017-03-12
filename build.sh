#!/bin/sh
for i in *.hs; do stack ghc -- -O --make -ddump-simpl $i; done
