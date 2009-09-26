# ***************************************************
# Test catch
# ***************************************************
set debuggertesting on
set autoeval off
set basename on
catch ZeroDivisionError
c
sk
break 27
c
jump -1
break 4
c
p arg = nil
c
jump 7
del 1
c
