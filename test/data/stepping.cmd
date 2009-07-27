# ***************************************************
# This tests step, next, finish and continue
# ***************************************************
set debuggertesting on
set callstyle last
next
where
step a
set forcestep on
step- ; step-
set forcestep off
where
next
step+
where
step 3
step+
where
next+	
# finish
quit
