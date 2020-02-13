# Steps to run the app
```
$ git clone https://github.com/jcreforme/docker_node_express_crud.git

$ npm init

$ npm install --save express mysql body-parser

$ node index.js
```

# Postman is require to  execute any REST, SOAP, and GraphQL queries.
Download here: https://www.postman.com/downloads/

//Get all employees
Get http://localhost:3002/employees 

//Get employee
GET http://localhost:3002/employee/:id

//Delete an employee
DELETE http://localhost:3002/employee/:id

//Insert an employee
POST http://localhost:3002/employee

the data must be on json format on the body as e.g.:
	{	
        "Name": "Chubaka",
        "EmpCode": "EM003",
        "Salary": 2000000
    }

//Update an employee
PUT http://localhost:3002/employee/:id

the data must be on json format on the body as e.g.:
	{	
        "Name": "Chubaka",
        "EmpCode": "EM003",
        "Salary": 2000000
    }


## Screen shots
============================ 

Postman screenshot
![GitHub Logo](/1.png)