Ansible Training Assignments
1. Write a ansible ad-hoc to retrieve the current date and time from web servers.
2. Create a group by name “db” and add remote node to the group.Verify connectivity with the group.
3. Write a ansible ad-hoc command to install & remove python3 & git package.
4. Add a system user called joe on all web servers. Make sure that the user has a home directory.
5. Write a ansible ad-hoc to clone the github repository. (https://github.com/becloudready/ansible-tutorials) & store it in location /tmp/.
6. Write a ad-hoc command to fetch the file .bash_profile from remote node & store it on controller node in home directory by name remote_node_profile.
7. Create a custom fact in remote nodes & get the git & httpd version using ansible adhoc command.  
8. Write a playbook to read username & password as variables & display the output.
9. Write a playbook to install httpd using command line argument.
10. Write a playbook to get the following details of localhost using setup module
    i)ansible_distribution ii)ansible_distribution_version iii)ansible_os_family
11. Write a playbook to perform the following arithmetic operations by passing values of x & y through vars.yaml file.
    i)Addition ii)Subtraction iii)Multiplication iv)Division v)Modulus
12. Write a playbook to install httpd using conditional statement.
13. Write a playbook to create the following users using loops.
    i)user:kunal groups:wheel ii)user:tom groups:user iii)user:bob groups:user
14. Write a playbook to install nginx & wget with & without tags.
15. Write a playbook to install apache web-server with customized default page which will prints "Welcome to Ansible training with ip_address of remote node".
16. Write a playbook to install Tomcat server 
17. Write a playbook to install Tomcat server using roles
18. Write a playbook to install Jenkins server using roles
