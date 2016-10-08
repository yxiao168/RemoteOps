#
# RemoteOps.py
#
from fabric.api import *

def local_uname():
    local('uname -a')

def remote_uname():
    run('uname -a')

def lsof():
    sudo('lsof -i')

def sudo_script(scriptfile):
    print('scriptfile: ' + scriptfile)
    fp = open(scriptfile)
    while 1:
    	line = fp.readline()
    	if not line:
           break
	print('line: ' + line)
	sudo(line)
