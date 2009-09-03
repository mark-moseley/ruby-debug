def foo
  j = 0
  [1,2,3,4,5].each { |i|
    j = i
    [10,11,12].each { |k|
      j = j + k
      puts j
    }
  }
  puts j
end

foo
puts "done"
