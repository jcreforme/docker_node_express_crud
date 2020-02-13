const mysql = require('mysql');
const express = require('express');
const bodyparser = require('body-parser');

var app = express();

app.use(bodyparser.json());

var mysqlConnection = mysql.createConnection({
	host: '127.0.0.1',
	user: 'root',
	password: 'password', 
	database: 'employeedb',
	port: 3306, 
	multipleStatements: true
});

mysqlConnection.connect((err)=>{
	if(!err){
		console.log('DB connect 100%');

	} else {
		console.log('BD connection failed'+JSON.stringfy(err,undefined,2))
	}

});

app.listen(3002,()=>console.log('Express server is running 100% at port 3002'));

//Get all employees
app.get('/employees',(req, res)=> {
	mysqlConnection.query('SELECT * FROM employee', (err, rows, fields)=>{
		if(!err) {
			console.log(rows); //rows[0].EmpID at the terminal
			res.send(rows); // at the browser
		} else {
			console.log(err);
		}
	})
});

//Get employee
app.get('/employee/:id',(req, res)=> {
	mysqlConnection.query('SELECT * FROM employee WHERE EmpID = ?', [req.params.id], (err, rows, fields)=>{
		if(!err) {
			console.log(rows); //rows[0].EmpID at the terminal
			res.send(rows); // at the browser
		} else {
			console.log(err);
		}
	})
});


//Delete an employee
app.delete('/employee/:id',(req, res)=> {
	mysqlConnection.query('DELETE FROM employee WHERE EmpID = ?', [req.params.id], (err, rows, fields)=>{
		if(!err) {
			console.log(rows); //rows[0].EmpID at the terminal
			res.send("Delete succesfully"); // at the browser
		} else {
			console.log(err);
		}
	})
});

//Insert an employee
app.post('/employees',(req, res)=> {
	let data = {Name: req.body.Name, EmpCode: req.body.EmpCode, Salary: req.body.Salary };
  	let sql = "INSERT INTO employee SET ?";
	mysqlConnection.query(sql, data, (err, rows, fields)=>{
		if(!err) {
			console.log(rows); //rows[0].EmpID at the terminal
			res.send("insert succesfully"); // at the browser
		} else {
			console.log(err);
		}
	})
});


//Update an employee
app.put('/employees/:id',(req, res)=> {
	let sql = "UPDATE employee SET Name='"+req.body.Name+"', EmpCode='"+req.body.EmpCode+"' WHERE EmpID="+req.params.id;
  	
	mysqlConnection.query(sql, (err, results)=>{
		 if(err) throw err;
    res.send(JSON.stringify({"status": 200, "error": null, "response": results}));
	});

	
});

