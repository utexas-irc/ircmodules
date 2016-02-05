local help_message=[[
Loads the tmux binaries to your PATH, also adds libevent
to your LD_LIBRARY_PATH.

Sets the environment variable TMUX_DIR to the tmux base
install location.
]]

local tmux_dir="/work/IRC/ls5/opt/apps/tmux"

help(help_message, "\n");

append_path('PATH', pathJoin(tmux_dir, "bin"));
append_path('LD_LIBRARY_PATH', "/work/IRC/ls5/opt/apps/libevent/lib");

setenv("TMUX_DIR", tmux_dir);
