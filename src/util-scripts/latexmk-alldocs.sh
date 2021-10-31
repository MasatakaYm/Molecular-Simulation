#!/bin/sh

# Compile each document
for file in `find . -name '*.tex' -and ! -name 'main.tex'`
do
    DIR_NAME=`dirname ${file}`
    TEX_FILE=`basename ${file}`

    if [ ${DIR_NAME} = './include' ]; then
        echo Skip compiling ${DIR_NAME}/${TEX_FILE}
        continue
    elif [ ${DIR_NAME} = './template' ]; then
        echo Skip compiling ${DIR_NAME}/${TEX_FILE}
        continue
    else
        pushd ${DIR_NAME}
        latexmk ${TEX_FILE}
        popd
    fi
done

# Compile main text
latexmk main