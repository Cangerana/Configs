#!/bin/sh

FILE=$HOME/projetos/tmp/copy_paste_register

sed -i "1s/^/$(xclip -o)\n/" $FILE

