#!/bin/env python

# You may need to change ROOTDIR if necessary!

import os
import shutil
from os.path import expanduser

flist_level1=[
'.bashrc',
'.python_init.py',
'.myvimrc',
'.vim',
]

ROOTDIR = expanduser("~")+"/"

class SafeMover:
  """back up the original file to x.bak and copy the new file"""

  def __init__(self):
    pass

  def __init__(self,flist_level1):
    self.flist_level1 = flist_level1

  def copy(self,odir,ndir,fs=flist_level1):
    """copy flist_level1 in old directory to new directory"""
    for i in fs:
      oldpath = os.path.join(odir, i)
      newpath = os.path.join(ndir, i)
      if os.path.exists(oldpath):
        if(os.path.isdir(oldpath)):
          shutil.copytree(oldpath,newpath)
        elif (os.path.isfile(oldpath)):
          shutil.copy2(oldpath,newpath)
        else:
          print("WARN:" + oldpath + " is not copied!")
      else:
        print("ERROR:" + oldpath +" doesn't exists!")

  def backupfile(self, ndir):
    for i in flist_level1:
      oldpath = os.path.join(ndir,i)
      newpath = os.path.join(ndir,i+'.bak')
      if(os.path.exists(oldpath)):
        #print("move from ",oldpath,"to",newpath)
        if os.path.exists(newpath):
          #print("backup path "+ newpath + " exists, remove it first!")
          if(os.path.isdir(newpath)):
            shutil.rmtree(newpath)
          else:
            os.remove(newpath)
        shutil.move(oldpath,newpath)


if __name__=="__main__":
  curdir=os.getcwd()
  sm = SafeMover(flist_level1)
  sm.backupfile(ROOTDIR)
  sm.copy(curdir,ROOTDIR)
  print('. {}.bashrc'.format(ROOTDIR))

