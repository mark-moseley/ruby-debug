#!/usr/bin/env ruby
# Test catching uncaught exceptions
def get_exception(arg)
  result = case arg
    when 0 then LoadError
    when 1 then ZeroDivisionError
    when 2 then NoMethodError
    else RuntimeError
  end
  return result
end

def bar(arg)
  $var = $var + "bar begin:"
  1/0 if arg
  if false
    raise LoadError
  end
  $var = $var + "bar end:"
end

def foo(arg)
  $var = $var + "foo begin:"
  yield arg
  $var = $var + "foo end:"
rescue get_exception(0), NameError
  $var = $var + "foo rescue:"
ensure
  $var = $var + "foo ensure:"
end

def zero_div(arg)
  x = 5
  foo(arg) { |i| bar(i) }
  x + arg
rescue get_exception(arg)
  $var = $var + "zero_div rescue:"
  return "divide by zero"
end

$var = "start1:"
puts zero_div(1)
puts $var
$var = "start2:"
puts zero_div(2)
puts $var
puts "done"
