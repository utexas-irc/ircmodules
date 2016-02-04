local help_message = [[
This module adds the binaries for FSLView to your PATH, and 
the libraries required to your LD_LIBRARY_PATH.

You can launch FSLView withe the command fslview <filename>

Version 5.0.9
]]

help(help_message, "\n");



local fslviewdir='/work/IRC/ls5/opt/apps/fslview';

append_path('PATH', pathJoin(fslviewdir,'bin'));
append_path('LD_LIBRARY_PATH', pathJoin(fslviewdir, 'lib'));
