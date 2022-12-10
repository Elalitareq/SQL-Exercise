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
insert into graduates(name,age,gender,points) select name,age,gender,points from students where name = "Layal";
update graduates set Graduation = "08/09/2018" where name="Layal";
delete from students where name="Layal";

