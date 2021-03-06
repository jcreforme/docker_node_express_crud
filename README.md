========================================================================================

# Docker + Nodejs + Express + MySql CRUD APP

========================================================================================

# Steps to run the app, Please open the terminal and do the steps:
```
$ git clone https://github.com/jcreforme/docker_node_express_crud.git

$ cd docker_node_express_crud

$ sudo docker-compose up -d

$ cat dump.sql | docker exec -i docker_node_express_crud_db_1  /usr/bin/mysql -u root --password=password 

$ node index.js
```

Can browse the app at <http://localhost:3002/employees>

![GitHub Logo](/3.png)

Can monitor the DB with PhpMyAdmin -uroot -ppassword <br />

Can browse here <http://localhost:8080/>
![GitHub Logo](/4.png)

# Postman is require to  execute any REST, SOAP, and GraphQL queries.
Download here: https://www.postman.com/downloads/

//Get all employees <br />
Get http://localhost:3002/employees 

//Get employee <br />
GET http://localhost:3002/employee/:id

//Delete an employee <br />
DELETE http://localhost:3002/employee/:id

//Insert an employee <br />
POST http://localhost:3002/employee

the data must be on json format on the body as e.g.:<br />
	{	
        "Name": "Chubaka",
        "EmpCode": "EM003",
        "Salary": 2000000
    }

//Update an employee <br />
PUT http://localhost:3002/employee/:id

the data must be on json format on the body as e.g.:<br />
	{	
        "Name": "Chubaka",
        "EmpCode": "EM003",
        "Salary": 2000000
    }


## Screen shots
============================ 

Postman screenshot
How select all employees example
![GitHub Logo](/1.png)

To update an employee example
![GitHub Logo](/2.png)


