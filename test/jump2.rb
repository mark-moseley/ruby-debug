def foo3(arg)
  arg = arg + 3
  puts arg
  arg = arg/0 if arg > 10
  rescue
    puts "r3"
end

def foo2(arg)
  arg = arg + 2
  foo3(arg)
  puts arg
  rescue
    puts "r2"
end

def foo1(arg)
  arg = arg + 1
  foo2(arg)
  puts arg
  rescue
    puts "r1"
end

foo1(0)
foo2(10)
puts "done"
