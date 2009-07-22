#!/bin/sh
# Things to do after doing a clean SVN update to add the proper files.
ln -vfs CHANGES NEWS
autoreconf -i -s
