create table department(
dept_no VARCHAR (10) NOT NULL,
dept_name VARCHAR (25) NOT NULL,
primary key (dept_no)
);

create table titles(
title_id VARCHAR(10) NOT NULL,
title VARCHAR (25) NOT NULL,
primary key (title_id)
);


create table employees(
emp_no VARCHAR(10) NOT NULL,
emp_title VARCHAR(10) NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR(25) NOT NULL,
last_name VARCHAR (25) NOT NULL,
sex VARCHAR (5) NOT NULL,
hire_date DATE NOT NULL,
primary key(emp_no),
foreign key(emp_title)REFERENCES titles(title_id)
);


create table dept_emp(
emp_no VARCHAR(10) NOT NULL,
dept_no VARCHAR(10)NOT NULL,
foreign key (emp_no) REFERENCES employees(emp_no),
foreign key (dept_no) REFERENCES department(dept_no)
);

create table salaries(
emp_no VARCHAR(10) NOT NULL,
salary VARCHAR(10) NOT NULL,
primary key (emp_no)
);


create table dept_manager(
dept_no(10) VARCHAR NOT NULL,
emp_no (10)VARCHAR NOT NULL,
primary key (emp_no, dept_no)
);




