#!/usr/bin/env python
import ast
import sys
import os

def is_valid_python(code,fname):
   try:
      ast.parse(code)
   except SyntaxError as serror:
      print "File:{0}\tError\tLine:{1}\tInfo:{2}".format(fname, serror.lineno,serror.msg)
      return -1
   print "File:{0}\tOK".format(fname)
   return 1

def checkfile(i):
  if len(i)<3 or i[-3:]!='.py':
    return 1
  with open(i,'r') as f:
    s=f.read()
    if is_valid_python(s,i)==-1:
      return -1
  return 0

if __name__ == '__main__':
  files=sys.argv[1:]
  for i in files:
    if os.path.isfile(i):
      if checkfile(i)==-1:
        sys.exit(-1)
    elif os.path.isdir(i):
        for root, dirs, files in os.walk(i, topdown=False):
            for name in files:
                fname=(os.path.join(root, name))
                if(checkfile(fname)==-1):
                  sys.exit(-1)
            #for name in dirs:
            #    print(os.path.join(root, name))
