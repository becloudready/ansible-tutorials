1. Update the file inventory with fourth server
2. Add aliases for all the servers as host1, host2, ...
3. Add an alias called `db1` for the ansible host server.company5.com

------------------------------------------------------------------------------------------

1. Create an inventory file for the following servers: (Ensure you include the ansible_connection method)

----------------------------------------------------------------------------
|  Alias |        HOST         | Connection | User          | Password     | 
---------------------------------------------------------------------------
|  web1  | host1.testnode1.com |    ssh     | root          | Password123! |
---------------------------------------------------------------------------
|  web2  | host2.testnode1.com |    ssh     | root          | Password123! |
---------------------------------------------------------------------------
|  web3  | host3.testnode1.com |    ssh     | root          | Password123! |
---------------------------------------------------------------------------
|  db1   | host4.testnode1.com |    winrm   | administrator | Dbp@ss123!   |
----------------------------------------------------------------------------

2. Update the inventory to create two groups: web_servers and db_servers
3. Update the groups with appropriate hosts.
4. Create group named servers. web_servers and db_servers will be the child groups. The syntax for the parent group will be as following:

```
[parent_group:children]
group1
group2
```

------------------------------------------------------------------------------------------

1. Create an inventory file with the following data:

------------------------------------------------------------------------
| Server Alias |  Server Name  |  OS      |     User      | Password   |
------------------------------------------------------------------------
| sql_db1      | sql01.hosts.com | Linux  |     root      | linuxadmin |
------------------------------------------------------------------------
| sql_db2      | sql02.hosts.com | Linux  |     root      | linuxadmin |
------------------------------------------------------------------------
| web_node1    | web01.hosts.com | Win    | administrator | winadmin   |
------------------------------------------------------------------------
| web_node2    | web02.hosts.com | Win    | administrator | winadmin   |
------------------------------------------------------------------------
| web_node3    | web03.hosts.com | Win    | administrator | winadmin   |
------------------------------------------------------------------------

2. Group the servers based on the following table:

--------------------------------------------------------
|    Group         |  Members                          |
--------------------------------------------------------
|   db_nodes       |  sql_db1, sql_db2                 |
--------------------------------------------------------
|   web_nodes      |  web_node1, web_node2, web_node3  |
--------------------------------------------------------
|   boston_nodes   |  sql_db1, web_node1               |
--------------------------------------------------------
|   dallas_nodes   |  sql_db2, web_node2, web_node3    |
--------------------------------------------------------
|   us_nodes       |  boston_nodes, dallas_nodes       |
--------------------------------------------------------