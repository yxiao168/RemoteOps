# RemoteOps

The steps to set up and run remote hardening script

1. Set up a python virtualenv 
```sh 
$ cd my_project_folder
$ virtualenv venv
```
See:
http://docs.python-guide.org/en/latest/dev/virtualenvs/


2. Enter the virtualenv
```sh 
$ source venv/bin/activate
```

3. Install fabric package
```sh 
$ pip install fabric
```

4. Copy over the myfabfile package
```sh 
$ mkdir script
$ cp {myfabfile package} script
```

5. Enter "script" sub-directory, and construct the hardening script, e.g.,  "abc.sh"
```sh 
$ cd script

$ nano abc.sh
```


6. Install public key on the remote host to be hardened by configuring and runing "copyid.sh"
```sh 
$ nano copyid.sh

$ ./copyid.sh
```


6. Configure "do.sh" and run it. The hardening script "abc.sh" would be run on the remote host as a sudoer. 
```sh 
$ nano do.sh

$ ./do.sh
```





