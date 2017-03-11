#!/bin/sh
for i in *.hs; do ghc -O --make -ddump-simpl $i; done