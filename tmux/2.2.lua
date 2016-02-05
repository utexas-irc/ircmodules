local help_message=[[
]]

local tmux_dir="/work/IRC/ls5/opt/apps/tmux"

help(help_message, "\n");

append_path('PATH', pathJoin(tmux_dir, "bin"));
append_path('LD_LIBRARY_PATH', "/work/IRC/ls5/opt/apps/libevent/lib");

setenv("TMUX_DIR", tmux_dir);
