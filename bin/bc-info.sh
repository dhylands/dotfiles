#!/bin/bash
#
# Prints the LLVM version of an LLVM bitcode file
#

FILE=$1

DEC=$(llvm-bcanalyzer ${FILE} | grep STRING | head -1 | sed -e 's/ \<STRING //' -e 's/abbrevid=.//' -e 's/op[0-9]*=//g' -e 's=/>.*==')
for ch in ${DEC}; do
  printf \\$(printf '%o' ${ch})
done
printf '\n'
