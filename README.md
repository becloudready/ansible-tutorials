# devopstraining

Sample programs and examples for DevOps Training

https://www.becloudready.com/training

# Ansible 

Contains examples of Ansible playbooks

https://www.becloudready.com/forum/articles-1/training-ansible-devops-training

## Ansible Instructions

Please use the instructions to setup environment at: https://www.becloudready.com/forum/articles-1/setup-ansible-environment-on-aws-ec2

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

## Q&A

https://www.becloudready.com/forum/questions

