# Shebanging it

This is history.. if it is boring by all means skip to the what matterns.

`#!` (shebang) is old! And respect, but it wants an absolute path to the interpreter that its about to sent to the rest of the text below it.

It actually does this

`exec (the interpreter path) $0 $@` which is like launch this script with the path I got after #!. But that is not all exec does something special too.

exec spawns off another process but it aquired the shells pid and transferes control of that pid to the new process and the scipt exits at that exec line. Computer magic right? Thinkk about it. exec is the ultimate mover. it moves all the furnature of the previous process out and holds the deed to the pid while the new process moves in. Pretty cool.

But shebang wont accept any path except an absolute path. So cant do $HOME/bin/python3 or ../../../bin/python or python3 even. And thats a problem for virutal envs. But there is a workaround 

```
#!/bin/env python3
print("i am python")
```

so what that does is resolve where python3 is in your path and then runs the path it found with the args you gave. 


Ok. so there is a hack we can do to fake it.

this.

```
#!/bin/bash
""":"
__PY=$(which python3)


exec $__PY $0 $@
"""

print("im python")
```

this will launch python but what is cool is it started with bash 1st, found python and launched python with the script.  This can then litterely do anything before launching python.

ok its messy but we understand now what we need to make this a system.


... more to come....
