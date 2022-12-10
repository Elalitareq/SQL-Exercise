/*Basic Querries*/
SELECT * from students;
SELECT * from students where age>30;
SELECT * from students where gender="F";
SELECT Points from students where name="Alex";
insert into students (name,age,gender,points) values("Tareq","26","M","200");
UPDATE students set Points=Points+5 where name="Basma";
UPDATE students set Points=Points-5 where name="Alex";
/*Creating Table*/
CREATE TABLE graduates(
    ID INTEGER  PRIMARY KEY AUTOINCREMENT,
    Name  TEXT NOT NULL UNIQUE,
    Age INTEGER,
        Gender TEXT,
        Points INTEGER,
        Graduation TEXT
);
insert into graduates(name,age,gender,points) SELECT name,age,gender,points from students where name = "Layal";
UPDATE graduates set Graduation = "08/09/2018" where name="Layal";
Delete from students where name="Layal";
/*Joins*/
CREATE TABLE "empcomp" (
	"Employee Name" TEXT NOT NULL UNIQUE,
	"Company Name" TEXT NOT NULL,
	"Company Date" INTEGER
);
insert into empcomp ("Employee Name","Company Name") SELECT name,Company from employees;
UPDATE empcomp SET "Company Date"="Date" from companies where "Company Name"="Name";
SELECT "Employee Name" FROM empcomp where "Company Date"<"2000";
SELECT "Company Name" FROM empcomp inner join employees on employees."Name"=empcomp."Employee Name" where Role="Graphic Designer";
/*Count & Filter*/
SELECT Name from students where Points=(SELECT max(Points) FROM students);
SELECT avg(Points) FROM students;
SELECT count(Points) from students WHERE Points="500";
select count("Name") from students where instr(name,"s");
select * from students order by Points desc;