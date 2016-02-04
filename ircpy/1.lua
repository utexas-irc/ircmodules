local help_message = [[
This module adds the IRC python extensions to your 
PYTHONPATH environment variable. 

It also defines the environmental variable IRC_SITE_PKG_DIR
for the location of the python2.7/site-packages directory 
we maintain. 

For a full listing of packages run `ls $IRC_SITE_PKG_DIR`

This module is only compatible with python/2.7.10 which is the
default python on TACC
]]

help(help_message, "\n");

prereq('python/2.7.10');

local site_dir='/work/IRC/ls5/lib/python2.7/site-packages';
append_path('PYTHONPATH', site_dir);
setenv("IRC_SITE_PKG_DIR", site_dir);
