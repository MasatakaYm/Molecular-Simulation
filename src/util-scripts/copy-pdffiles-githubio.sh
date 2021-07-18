#!/bin/sh

PATH_FILES=$1

if [ $# != 1 ]; then
    echo Invalid Arguments: $*
    echo "Usage: copy-pdffiles-github.io.sh  dir_name"
    exit 1
else
    DIR_GITHUB_IO=$1
    for pdf in `find . -name "*.pdf" ! -path "./drafts/*" ! -name "README.pdf" ! -name "template.pdf"`
    do
        cp $pdf $DIR_GITHUB_IO
    done
fi


