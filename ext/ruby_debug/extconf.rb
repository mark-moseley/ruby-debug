require "mkmf"
require "ruby_core_source"

if RUBY_VERSION < "1.9"
  STDERR.print("Ruby version is too old\n")
  exit(1)
end

dir_config("ruby")
if have_header("vm_core.h") and have_header("iseq.h") and have_header("insns.inc") and 
  have_header("insns_info.inc")

  create_makefile("ruby_debug")
else
  with_cppflags("-I" + Ruby_core_source::get_ruby_core_source) {

    if have_header("vm_core.h") and have_header("iseq.h") and have_header("insns.inc") and 
      have_header("insns_info.inc")

      create_makefile("ruby_debug")
    else

      STDERR.print("Makefile creation failed\n")
      STDERR.print("*************************************************************\n\n")
      STDERR.print("  NOTE: For Ruby 1.9 installation instructions, please see:\n\n")
      STDERR.print("     http://wiki.github.com/mark-moseley/ruby-debug\n\n")
      STDERR.print("*************************************************************\n\n")
      exit(1)
    end
  }
end
