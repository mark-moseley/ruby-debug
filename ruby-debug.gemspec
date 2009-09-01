# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ruby-debug-base19}
  s.version = "0.11.19"
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kent Sibilev", "Mark Moseley"]
  s.date = %q{2009-09-01}
  s.description = %q{ruby-debug is a fast implementation of the standard Ruby debugger debug.rb.
It is implemented by utilizing a new Ruby C API hook. The core component
provides support that front-ends can build on. It provides breakpoint
handling, bindings for stack frames among other things.
}
  s.email = %q{mark@fast-software.com}
  s.extra_rdoc_files = [
    "README",
     "ext/ruby_debug/ruby_debug.c"
  ]
  s.files = [
    "AUTHORS",
    "CHANGES",
    "LICENSE",
    "README",
    "Rakefile",
    "ext/ruby_debug/extconf.rb",
    "ext/ruby_debug/breakpoint.c",
    "ext/ruby_debug/ruby_debug.h",
    "ext/ruby_debug/ruby_debug.c",
    "lib/ruby-debug-base.rb",
    "lib/ChangeLog"
  ]
  s.homepage = %q{http://rubyforge.org/projects/ruby-debug19/}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.2")
  s.rubyforge_project = %q{ruby-debug19}
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Fast Ruby debugger - core component}
  s.test_files = [ 
    "test/base/base.rb",
    "test/base/binding.rb",
    "test/base/catchpoint.rb"
    ]
  s.files += s.test_files
  s.extensions << "ext/ruby_debug/extconf.rb"
  s.add_dependency("columnize", ">= 0.3.1")
  s.add_dependency("ruby_core_source", ">= 0.1.4")
  s.add_dependency("linecache19", ">= 0.5.11")

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

