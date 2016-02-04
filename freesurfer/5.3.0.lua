help([[
This module defines the environmental variable FREESURFER_HOME,
adds the binaries for freesurfer, fsfast, and mni to your PATH,
and adds the libs to your LD_LIBRARY_PATH.

Note that you must still source $FREESURFER_HOME/SetUpFreeSurfer.sh
in order to use it.

Users should either specify a SUBJECTS_DIR variable in their 
environment or supply a command line argument to commands that 
output to the $SUBJECTS_DIR, as the default is not writeable 
by users and will cause permissions errors.

Version 5.3.0
]]);

prereq('matlab');
local freesurfer_dir='/work/IRC/ls5/opt/apps/freesurfer-5.3.0';

append_path('PATH', pathJoin(freesurfer_dir, 'bin'));
append_path('PATH', pathJoin(freesurfer_dir, 'fsfast/bin'));
append_path('PATH', pathJoin(freesurfer_dir, 'mni/bin'));
append_path('LD_LIBRARY_PATH', pathJoin(freesurfer_dir, 'lib'));
append_path('LD_LIBRARY_PATH', pathJoin(freesurfer_dir, 'mni/lib'));
setenv('FREESURFER_HOME', freesurfer_dir);

if (mode() == "load") then
	local lmsg=[[
Freesurfer loaded but not setup. Now run: source $FREESURFER_HOME/SetUpFreeSurfer.sh

Be sure that your $SUBJECTS_DIR variable is set to a directory you have write 
access to, or provide a subjects dir argument to commands that require it. 
]]
	LmodMessage(lmsg, "\n");
end
