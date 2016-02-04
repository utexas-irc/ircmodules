local help_message = [[
This module adds the ANTS binaries to your PATH and required
libraries to your LD_LIBRARY_PATH.

It also creates an environment variable named IRC_ANTS_DIR
for the location of the main ANTS directory and binaries.

For documentation see http://stnava.github.io/ANTs/

Version 2.1.0
]]

help(help_message, "\n");

append_path('PATH','/work/IRC/ls5/opt/apps/ants/bin');
append_path('LD_LIBRARY_PATH','/work/IRC/ls5/opt/apps/ants/lib');
setenv("IRC_ANTS_DIR", "/work/IRC/ls5/opt/apps/ants");
