#  Ansible Tutorials

Sample programs and examples for DevOps Training



# Ansible 

Contains examples of Ansible playbooks



## Get setup for your Local Git with Visual studio code



## Ansible Instructions

Please use the instructions to setup environment at: 

### lab-01

Just copy paste the instructions from lab-01 folder, it should work

### lab-02
```
cd ansible/lab-02/
ansible-playbook java-nginx.yml
```
### lab-03

```
cd ansible/lab-03/
ansible-playbook web-page.yml
```
### lab-04

```
cd ansible/lab-04/
ansible-playbook deploy-web-content.yml
```

### lab-05

```
cd ansible/lab-05/
ansible-playbook deploy-web-content.yml
```

## lab-06 - Please don't push your AWS key on github

Lab to create instances on AWS. 

```
sudo yum install python-pip -y
sudo pip install boto
cd ansible/lab-06/
ansible-playbook create_ec2_instance.yml

```
To Terminate the instance ( You will need the instance id either from AWS console, or output from the create playbook)
```
cd ansible/lab-06/
ansible-playbook terminate_ec2_instance.yml

```

## Lab -07 - Please don't push your AWS key on github

Generate dynamic inventory and run playbooks
```
cd ansible/lab-07/
python dynamic_inventory.py <aws-access-key> <aws-access-secret-key>

```
## Lab -08 - Please don't push your AWS key on github

Generate dynamic inventory and install docker followed by mssql docker image
```
ansible-playbook lab-08/running_roles.yml
```

## Q&A

## Assignments

- Write a ansible ad-hoc to retrieve the current date and time from web servers.
- Create a group by name “db” and add remote node to the group.Verify connectivity with the group.
- Write a ansible ad-hoc command to install & remove python3 & git package.
- Add a system user called joe on all web servers. Make sure that the user has a home directory.
- Write a ansible ad-hoc to clone the github repository. (https://github.com/becloudready/ansible-tutorials) & store it in location /tmp/.
- Write a ad-hoc command to fetch the file .bash_profile from remote node & store it on controller node in home directory by name remote_node_profile.
- Create a custom fact in remote nodes & get the git & httpd version using ansible adhoc command.
- Write a playbook to read username & password as variables & display the output.
- Write a playbook to install httpd using command line argument.
- Write a playbook to get the following details of localhost using setup module 
  -   ansible_distribution 
  -   ansible_distribution_version 
  -   ansible_os_family
- Write a playbook to perform the following arithmetic operations by passing values of x & y through vars.yaml file. 
  - Addition
  - Subtraction
  - Multiplication
  - Division v)Modulus
- Write a playbook to install httpd using conditional statement.
- Write a playbook to create the following users using loops. 
  -   user:kunal groups:wheel 
  -   user:tom groups:user 
  -   user:bob groups:user
- Write a playbook to install nginx & wget with & without tags.
- Write a playbook to install apache web-server with customized default page which will prints "Welcome to Ansible training with ip_address of remote node".
- Write a playbook to install Tomcat server
- Write a playbook to install Tomcat server using roles
- Write a playbook to install Jenkins server using roles

