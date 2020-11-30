DROP DATABASE IF EXISTS employee_trackerDB;

CREATE DATABASE employee_trackerDB;

USE employee_trackerDB;

-- Department Table --
CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30)

);

-- Department Table --
CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    TITLE varchar(30)
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

-- Employee role table __
CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    manager_id INT,
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES role(id),
    FOREIGN KEY (manager_id) REFERENCES employee(id)

);

-- Department seeds --
INSERT INTO department (name)
VALUE ("Sales");
INSERT INTO department (name)
VALUE ("Engineering");
INSERT INTO department (name)
VALUE ("Finance");
INSERT INTO department (name)
VALUE ("Legal");

-- Employee role seeds --
INSERT INTO role (title, salary, department_id)
VALUE ("Lead Engineer", 150000, 2);
INSERT INTO role (title, salary, department_id)
VALUE ("Legal Team Lead", 250000, 4);
INSERT INTO role (title, salary, department_id)
VALUE ("Accountant", 125000, 3);
INSERT INTO role (title, salary, department_id)
VALUE ("Sales Lead", 100000, 1);
INSERT INTO role (title, salary, department_id)
VALUE ("Salesperson", 80000, 1);
INSERT INTO role (title, salary, department_id)
VALUE ("Software Engineer", 120000, 2);
INSERT INTO role (title, salary, department_id)
VALUE ("Lawyer", 190000, 4);

-- Employee seeds -- 
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Megan", "Jessica", null, 1);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Tiffany", "Patric", null, 2);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Mia", "Lam", null, 3);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Bently", "Lao", 1, 4);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Chris", "Melby", 4,  5);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Jason", "Baker", 1, 6);
INSERT INTO emplyoee (first_name, last_name, manager_id, role_id)
VALUE ("Tom", "Nice", 2, 7); 

-- Selecting for creating --
-- Tables in our sql workbench --
SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;