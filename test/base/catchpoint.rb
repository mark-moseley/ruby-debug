#!/usr/bin/env ruby
require 'test/unit'

# Test catchpoint in C ruby_debug extension.
  
class TestRubyDebugCatchpoint < Test::Unit::TestCase

  $:.unshift File.join(File.dirname(__FILE__), '..', '..', 'ext')
  require 'ruby_debug'
  $:.shift

  # test current_context
  def test_catchpoints
    assert_equal({}, Debugger.catchpoints)
    Debugger.add_catchpoint('ZeroDivisionError')
    assert_equal({'ZeroDivisionError' => 0}, Debugger.catchpoints)
    Debugger.add_catchpoint('RuntimeError')
    assert_equal(['RuntimeError', 'ZeroDivisionError'], 
                 Debugger.catchpoints.keys.sort)
  end

end

