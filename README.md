LMOD modules for loading environments for use on 
Lonestar 5.

Modules can be installed by unpacking the dirs in 
any location. After that run 
```
module use <unpack_location>
module load <module_dirname>
```
to load the required module. eg, if you unpack the 
module directories in /usr/local/modules, to use FSL
you would run
```
module use /usr/local/modules
module load fsl
```

Modules that load binaries will respond to 
```
module help <module_name>
```

These are only for use on the Lonestar 5 grid at TACC.
