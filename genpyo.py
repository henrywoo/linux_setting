#!/usr/bin/env python
import sys 
import os
import py_compile

def genpyo(i):
  if len(i)<3 or i[-3:]!='.py':
    return 0
  try:
    py_compile.compile(i,i+'o')
  except Exception:
    return 1
  return 0

if __name__ == '__main__':
  files=sys.argv[1:]
  for i in files:
    if os.path.isfile(i):
      if genpyo(i):
        sys.exit(1)
    elif os.path.isdir(i):
        for root, dirs, files in os.walk(i, topdown=False):
            for name in files:
                fname=(os.path.join(root, name))
                if(genpyo(fname)):
                  sys.exit(1)
            #for name in dirs:
            #    print(os.path.join(root, name))
