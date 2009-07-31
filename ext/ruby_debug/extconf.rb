require "mkmf"

if RUBY_VERSION >= "1.9"
  if RUBY_RELEASE_DATE < "2005-03-17"
    STDERR.print("Ruby version is too old\n")
    exit(1)
  end
elsif RUBY_VERSION >= "1.8"
  if RUBY_RELEASE_DATE < "2005-03-22"
    STDERR.print("Ruby version is too old\n")
    exit(1)
  end
else
  STDERR.print("Ruby version is too old\n")
  exit(1)
end

# Temporary: to turn off optimization
# $CFLAGS='-fno-strict-aliasing -g -fPIC'

dir_config("ruby")
if have_header("node.h")
  create_makefile("ruby_debug")
else
  STDERR.print("Makefile creation failed\n")
  STDERR.print("try using option --with-ruby-include=<dir with node.h>\n")
  exit(1)
end
