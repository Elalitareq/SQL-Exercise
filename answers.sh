/*Basic Querries*/
/*1.*/ SELECT * from students;
/*2.*/ SELECT * from students where age>30;
/*3.*/ SELECT * from students where gender="F";
/*4.*/ SELECT Points from students where name="Alex";
/*5.*/ insert into students (name,age,gender,points) values("Tareq","26","M","200");
/*6.*/ UPDATE students set Points=Points+5 where name="Basma";
/*7.*/ UPDATE students set Points=Points-5 where name="Alex";
/*Creating Table*/
CREATE TABLE graduates(
    ID INTEGER  PRIMARY KEY AUTOINCREMENT,
    Name  TEXT NOT NULL UNIQUE,
    Age INTEGER,
        Gender TEXT,
        Points INTEGER,
        Graduation TEXT
);
/*10.*/ insert into graduates(name,age,gender,points) SELECT name,age,gender,points from students where name = "Layal";
/*11.*/ UPDATE graduates set Graduation = "08/09/2018" where name="Layal";
/*12.*/ Delete from students where name="Layal";
/*Joins*/
/*14.*/CREATE TABLE "empcomp" (
	"Employee Name" TEXT NOT NULL UNIQUE,
	"Company Name" TEXT NOT NULL,
	"Company Date" INTEGER
    );
    insert into empcomp ("Employee Name","Company Name") SELECT name,Company from employees;
    UPDATE empcomp SET "Company Date"="Date" from companies where "Company Name"="Name";
/*15.*/SELECT "Employee Name" FROM empcomp where "Company Date"<"2000";
/*16.*/SELECT "Company Name" FROM empcomp inner join employees on employees."Name"=empcomp."Employee Name" where Role="Graphic Designer";
/*Count & Filter*/
/*18.*/SELECT Name from students where Points=(SELECT max(Points) FROM students);
/*19.*/SELECT avg(Points) FROM students;
/*20.*/SELECT count(Points) from students WHERE Points="500";
/*21.*/select count("Name") from students where instr(name,"s");
/*22.*/select * from students order by Points desc;