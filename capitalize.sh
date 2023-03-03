#!/bin/bash

xclip -o | xclip -selection clipboard -i
name = $(xclip -o)

#xclip -o

echo $name

#notify-send asd
