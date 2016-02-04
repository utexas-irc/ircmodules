local help_message=[[
This module adds the mricron binaries to your PATH and 
defines the environment variable MRICRON_DIR for the 
main MRICron directory.

Version June2015
]]

help(help_message, "\n");

local mricron_dir='/work/IRC/ls5/opt/apps/mricron_lx';

append_path('PATH', mricron_dir);

setenv("MRICRON_DIR", mricron_dir);
