#!/bin/sh

# Usage:
# $ sh format_punctuation.sh filename

sed -i '.bak' "s/、/, /g" ${1}
sed -i '.bak' "s/。/. /g" ${1} 
