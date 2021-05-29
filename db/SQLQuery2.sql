create table student(
Id int primary key identity,
rollNo nvarchar(MAX),
name nvarchar(MAX),
address nvarchar(MAX),
department int references dept(Id)
);