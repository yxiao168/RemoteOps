#
# do.sh
#
HOST=10.30.36.103
IDENTITY=~/.ssh/id_rsa
USER=yxiao
#
# password for ${USER} to perform sudo jobs 
#
SUDOPASSWORD=123yxi
#
FABFILE=./RemoteOps.py
#
# the script to do on ${HOST}
#
COMMAND=sudo_script:scriptfile=abc.sh
#
# 
#
fab ${COMMAND} -i ${IDENTITY} --sudo-password=${SUDOPASSWORD} -H ${USER}@${HOST} -f ${FABFILE} --linewise
