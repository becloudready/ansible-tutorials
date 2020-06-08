

## Test Ad hoc commands and ssh command comparison

# ssh node01 "hostname -f"
# ansible node01   -a "hostname -f"

# ssh node01 "mkdir /home/ec2-user/mytestdir"
ansible node00  -a "mkdir /home/ec2-user/testdirAnsible"
ansible node00 -m copy -a "src=inventory/ansible-nodes dest=/tmp/ansible-nodes"
ansible node00 -m shell -a "cat /tmp/ansible-nodes" 
ansible node00 -b -m yum -a "name=httpd state=present"
ansible node00 -b -m yum -a "name=git state=present"
ansible node00 -b -m git -a "repo=https://github.com/becloudready/prometheus_monitoring.git dest=/tmp version=HEAD"

# Using Ansible modules in ad-hoc commands

ansible -m service -a "name=nginx state=started enabled=yes" node00 --become
ansible -m file -a "path=/home/ec2-user/usingAnsible state=directory" node00 --become
ansible -m copy -a "src=Vagrantfile dest=/tmp" node00 --become

