Exercise using Dune's [virtual libraries](https://dune.readthedocs.io/en/stable/virtual-libraries.html) and conditional compilation. 

We want to have two different implementations of `system_process`, one for Linux and another for MacOS. 
These can be included in conditionally compiled executables. However trying to use them in tests results in this error:
```
$ dune build @all
File "test/dune", line 5, characters 20-48:
5 |  (libraries virtual virtual.linux_system_process))
                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Error: Library "virtual.linux_system_process" in
_build/default/lib/system_process/linux is hidden (unsatisfied 'enabled_if').
-> required by _build/default/test/test_virtual.exe
-> required by alias test/all
```
It's unclear how to use virtual libraries in test code.
