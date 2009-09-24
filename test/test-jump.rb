#!/usr/bin/env ruby
require 'test/unit'

# begin require 'rubygems' rescue LoadError end
# require 'ruby-debug'; Debugger.start

# Test jump command
class TestJumpCommand < Test::Unit::TestCase

  @@SRC_DIR = File.join(Dir.pwd, File.dirname(__FILE__)) unless
    defined?(@@SRC_DIR)

  require File.join(@@SRC_DIR, 'helper')
  include TestHelper

  def test_basic
    testname='jump'
    Dir.chdir(@@SRC_DIR) do 
      script = File.join('data', testname + '.cmd')
      assert_equal(true, 
                   run_debugger(testname,
                                "--script #{script} -- ./#{testname}.rb"))
    end
  end

  def test_basic_2
    testname='jump2'
    Dir.chdir(@@SRC_DIR) do 
      script = File.join('data', testname + '.cmd')
      assert_equal(true, 
                   run_debugger(testname,
                                "--script #{script} -- ./#{testname}.rb"))
    end
  end
end
