#!/usr/bin/env python3
import code

if __name__ == '__main__':
    vars = globals().copy()
    vars.update(locals())
    shell = code.InteractiveConsole(vars)
    shell.interact() 
