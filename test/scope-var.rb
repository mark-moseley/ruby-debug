require 'ruby_debug'
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
  puts eval("s3_var1", Debugger.current_context.frame_binding(0))
  puts eval("i", Debugger.current_context.frame_binding(1))
  puts eval("j", Debugger.current_context.frame_binding(1))
  puts eval("s2_var1", Debugger.current_context.frame_binding(2))
  puts eval("s1_var1", Debugger.current_context.frame_binding(3))
  puts eval("s0_var1", Debugger.current_context.frame_binding(4))
end

s0_var1 = 1357;
scope1(111, 222)
