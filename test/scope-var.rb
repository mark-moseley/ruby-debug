def scope1(arg1, arg2)
  s1_var1 = 123
  s1_var2 = "scope1"
  scope2
end

def scope2
  s2_var1 = 456
  s2_var2 = "scope2"
  0.upto(5) do |i|
    j = i * 10
    scope3
  end
end

def scope3
  s3_var1 = 789
  s3_var2 = "scope3"
end

scope1(111, 222)
