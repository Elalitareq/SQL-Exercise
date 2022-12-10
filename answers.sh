SELECT * from students;
SELECT * from students where age>30;
SELECT * from students where gender="F";
SELECT Points from students where name="Alex";
insert into students (name,age,gender,points) values("Tareq","26","M","200");
UPDATE students set Points=Points+5 where name="Basma";
UPDATE students set Points=Points-5 where name="Alex";