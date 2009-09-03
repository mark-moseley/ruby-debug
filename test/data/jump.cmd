# ********************************************************
# This tests jump command
# ********************************************************
set debuggertesting on
set callstyle last
set force off
break 7
cont
jump -1
cont
delete 1
jump -1
jump +1
next
jump 2
cont
