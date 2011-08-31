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
color reset
echo 'Back to default color'
echo 'Highlight terms in a string' | colorize 'terms'
echo

msg 'Init style status messages' red underline
stat_busy Running
sleep 2
stat_pass

status 'Status of ls -l' ls -l 
stat_busy 'Test 0 > 1'
[[ 0 -gt 1 ]] && stat_pass|| stat_fail
echo

msg 'Math functions' red underline
x=(`rand 5`)
echo "x=${x[@]}"
msg 'length x='`length ${x[@]}`
msg 'sum x ='`sum ${x[@]}`
msg 'mean x ='`mean ${x[@]}`
msg 'Commands accept pipes: echo {1..5}|pow2|sqrt'
echo {1..5} | pow2 |sqrt
msg "Evaluate expressions: echo 'sqrt(2)*100/2' | calc"
echo 'sqrt(2)*100/2' | calc
msg

msg 'String utilities' red underline
echo 'upperCase'|upper
echo 'LOwercase'|lower
echo 'capiTalize'|capitalize
echo '  >strtrim<  '|str_trim
str_rep '-' 20

echo -e "\nPlayback log:"
logcat
logoff
#time elapsed
str_rep '-' 20
echo "Time elapsed $(toc)(s)."
