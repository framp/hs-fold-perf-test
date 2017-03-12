#haskell-fold-test

Test to investigate perfomance discrepancies with the fold functions on my system (GHC 8.0.1 and 8.0.2).

More precisely:
 - foldr: memory usage grows up to crash the system
 - foldl: memory usage is constant (!!!)
 - foldl': memory usage is constant (as expected)

This is the opposite of what the wiki suggests: [https://wiki.haskell.org/Foldr_Foldl_Foldl'](https://wiki.haskell.org/Foldr_Foldl_Foldl')

Resolved: 
http://stackoverflow.com/questions/42747159/foldl-memory-performance-in-ghc-8-0-x/42747565#42747565
TLDR: I had -O on and foldl was getting optimised
