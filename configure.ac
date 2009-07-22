AC_INIT(ruby-debug-extra, 0.10.4vc,)
AC_CONFIG_SRCDIR(doc/ruby-debug.texi)
AM_INIT_AUTOMAKE

##
## Find out where to install the debugger emacs lisp files
##
AM_PATH_LISPDIR
AM_CONDITIONAL(INSTALL_EMACS_LISP, test "x$lispdir" != "x")

AC_CONFIG_FILES([doc/Makefile emacs/Makefile Makefile])
AC_OUTPUT
