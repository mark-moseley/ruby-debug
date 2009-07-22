SUBDIRS = doc emacs
PHONY = test ChangeLogs
test: check
ChangeLogs: ChangeLog doc/ChangeLog emacs/ChangeLog lib/ChangeLog 
ChangeLog:
	svn2cl --authors=svn2cl_usermap svn://rubyforge.org/var/svn/ruby-debug/trunk  \
                 cli test bin AUTHORS CHANGES LICENSE README runner.sh -o ChangeLog
lib/ChangeLog:
	svn2cl --authors=svn2cl_usermap svn://rubyforge.org/var/svn/ruby-debug/trunk \
                 lib ext -o lib/ChangeLog
doc/ChangeLog:
	svn2cl --authors=svn2cl_usermap svn://rubyforge.org/var/svn/ruby-debug/trunk/doc -o doc/ChangeLog
emacs/ChangeLog:
	svn2cl --authors=svn2cl_usermap svn://rubyforge.org/var/svn/ruby-debug/trunk/emacs -o emacs/ChangeLog
