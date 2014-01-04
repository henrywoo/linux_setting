#!/usr/bin/env python
import sys
import dis

if len(sys.argv) > 1:
  fname = sys.argv[1]
  sr = open(fname).read()
  co = compile(sr, fname, 'exec')
  dis.dis(co)
