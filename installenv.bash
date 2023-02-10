#!/bin/bash

SYSPYTHON=$(which python3)

if [ ! -e $SYSPYTHON ] ; then 
    echo "system python not found. install python3"
    exit 1
fi

PYENV=$HOME/.mkdocs
ENVPYTHON=$PYENV/bin/python3
ENVPIP=$PYENV/bin/pip
ENVREQ=$(dirname $0)/requirements.txt

if [ ! -e $ENVPYTHON ]; then
    $SYSPYTHON -m venv $PYENV
    $ENVPIP install pip --upgrade
    $ENVPIP install -r $ENVREQ
fi

if [ $ENVPIP -ot $ENVREQ ]; then
    echo "updating pip packages. please wait."
    $ENVPIP install -r $ENVREQ 1> /dev/null || exit 1
    touch $ENVPIP
fi
echo
cat $(dirname 0)/quickstart.txt

printf "\n source  $HOME/.mkdocs/bin/activate\n"