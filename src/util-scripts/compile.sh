#!/bin/sh

# Usage:
#  $ sh compile.sh filename
#
# Note:
#  Do not contain extension in filename.
#
# Reference:
#  [1] 改定第6版 LATEX2e 美文書作成入門,　奥村晴彦/黒木裕介, chapter 10, p161.

FILE=$1

# if [ -e ${FILE}.bbl ]; then
#     rm ${FILE}.bbl
# fi

for f in 1st 2nd 3rd final;
do
    echo "-------------------------------------- $f try --------------------------------------"
    uplatex ${1}.tex

    # If citation does not found (grep return sonething), make bbl file and load bbl file by uplatex command
    grep 'LaTeX Warning: Citation' ${1}.log && (upbibtex ${1}; uplatex ${1}.tex; uplatex ${1})

    # If no warning(grep does not return anything), exit from for roop.
    grep 'LaTeX Warning: Reference' ${1}.log || break
done

# Check Warning
echo "---------- LaTex Warnings ----------"
grep 'LaTeX Warning:' ${1}.log
