#!/bin/bash
source ./bashtk

#start a timer
tic
#start logging
logon bashtk.log
logreset

msg 'Message functions' red underline
msg 'msg supports color and logging' green
msg 'This is in light-blue underlined' blue bold underline
color green
echo 'Im green'
color
echo 'Back to default color'
echo 'Highlight terms in a string' | colorize 'terms'
echo

msg 'Math functions' red underline
x=(`rand 5`)
echo "x=${x[@]}"
msg 'length x='`length ${x[@]}`
# commands also support also pipes
msg 'sum x ='`sum ${x[@]}`
msg 'mean x ='`mean ${x[@]}`
msg 'Commands can be piped: seq 1 5|pow2|sqrt'
seq 1 5 | pow2 |sqrt
msg "Evaluate expressions: echo 'sqrt(2)*100/2' | calc"
echo 'sqrt(2)*100/2' | calc
msg

msg 'String utilities' red underline
echo 'upperCase'|upper
echo 'LOwercase'|lower
echo 'capiTalize'|capitalize
echo '  >strtrim<  '|strTrim
strRep '-' 20

echo -e "\nPlayback log:"
logcat
logoff
#time elapsed
strRep '-' 20
echo "Time elapsed $(toc)(s)."
