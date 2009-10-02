#!/usr/bin/env ruby
# Test Debugger.catchpoint 
def get_exception
  LoadError
end

def bar(arg)
  $var = $var + "bar:"
  puts "bar begin"
  1/0 if arg
  puts "bar end"
  if false
    raise LoadError
  end
end

def foo
  puts "foo begin"
  yield 1
  puts "foo end"
rescue get_exception, NameError
  $var = $var + "rescue:"
  puts "get_exception rescue"
ensure
  $var = $var + "ensure:"
end

def zero_div(arg)
  x = 5
  foo { |i| bar(i) }
  x + arg
end

$var = "start:"
puts zero_div(10)
puts $var
puts "done"
