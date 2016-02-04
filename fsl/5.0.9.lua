help([[
This module adds FSL binaries to your PATH, and adds
libraries to your LD_LIBRARY_PATH. It also
sets all environment variables FSL requires (eg, FSLDIR,
FSLOUTPUTTYPE etc). 

There is no need to source any etc/fslconf files

Version 5.0.9
]]);

local fsldir = '/work/IRC/ls5/opt/apps/fsl-5.0.9';

setenv('FSLDIR', fsldir);
setenv('FSLMULTIFILEQUIT','TRUE');
setenv('FSLGECUDAQ','cuda.q');
setenv('FSLMACHTYPE','linux_64-gcc4.9');
setenv('FSLTCLSH', pathJoin(fsldir, 'bin/fsltclsh'));
setenv('FSLMACHINELIST', '');
setenv('FSLREMOTECALL','');
setenv('FSLCONFDIR', pathJoin(fsldir, 'config'));
setenv('FSLWISH',pathJoin(fsldir, 'bin/fslwish'));
setenv('FSLLOCKDIR', '');
setenv('FSLOUTPUTTYPE','NIFTI_GZ');
append_path('PATH', pathJoin(fsldir, 'bin'));
append_path('LD_LIBRARY_PATH', pathJoin(fsldir, 'lib'));
