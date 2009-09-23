#!/ursr/bin/env ruby
# Test Debugger.catchpoint and post-mortem handling
def zero_div
  x = 5
  1/0
  x = 6
end
x = 2
puts zero_div
raise RuntimeError
x = 3

