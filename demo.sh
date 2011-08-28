#!/bin/bash

source /xchip/cogs/matlib/bin/bashtk

echo testing bashtk
msg 'this is in red' red
msg 'blue underlined' blue underline
color green
echo 'green'
color
echo 'default color'
x=(1 2 3 4 5)
echo "x='${x[@]}'"
echo 'length:'`length ${x[@]}`
echo 'sum:'`sum ${x[@]}`
echo 'mean:'`mean ${x[@]}`
