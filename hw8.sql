USE store;
create table student (
    id int auto_increment unique primary key,
    firstname varchar(20) null,
    lastname varchar(20) null,
    email varchar(20) null
);
create table student_address (
    id int auto_increment unique primary key,
    street varchar(20) not null,
    num int not null,
    town varchar(20) not null,
    zip int not null,
    studentId int not null,
    foreign key (studentId) references student(Id)
);
create table class (
    id int auto_increment unique primary key,
    class_subject varchar(20) not null
);
create table student_class_assoc (
    studentId int not null,
    classId int not null
);

insert into student(firstname, lastname, email) values ('Kim', 'Kardashian', 'kkardashian1');
insert into student(firstname, lastname, email) values ('Kris', 'Jenner', 'kjenner1');
insert into student(firstname, lastname, email) values ('Kourtney', 'Kardashian', 'kkardashian2');
insert into student(firstname, lastname, email) values ('Khloe', 'Kardashian', 'kkardashian3');
insert into student(firstname, lastname, email) values ('Kylie', 'Jenner', 'kjenner2');
insert into student(firstname, lastname, email) values ('Kendall', 'Jenner', 'kjenner3');
insert into student(firstname, lastname, email) values ('Kanye', 'West', 'kwest');
insert into student(firstname, lastname, email) values ('Rob', 'Kardashian', 'rkardashian');
insert into student(firstname, lastname, email) values ('Travis', 'Barker', 'tbarker');
insert into student(firstname, lastname, email) values ('North', 'West', 'nwest');
insert into student(firstname, lastname, email) values ('Stormi', 'Jenner', 'sjenner');

select * from student;

insert into student_address(street, num, town, zip, studentId) VALUES ('Diamond Rd', 1, 'Calabasas', 90290, 1);
insert into student_address(street, num, town, zip, studentId) VALUES ('Diamond Rd', 1, 'Calabasas', 90290, 2);
insert into student_address(street, num, town, zip, studentId) VALUES ('Diamond Rd', 1, 'Calabasas', 90290, 3);
insert into student_address(street, num, town, zip, studentId) VALUES ('Diamond Rd', 1, 'Calabasas', 90290, 4);
insert into student_address(street, num, town, zip, studentId) VALUES ('Diamond Rd', 1, 'Calabasas', 90290, 5);
insert into student_address(street, num, town, zip, studentId) VALUES ('Diamond Rd', 1, 'Calabasas', 90290, 6);
insert into student_address(street, num, town, zip, studentId) VALUES ('Diamond Rd', 1, 'Calabasas', 90290, 7);
insert into student_address(street, num, town, zip, studentId) VALUES ('Diamond Rd', 1, 'Calabasas', 90290, 8);
insert into student_address(street, num, town, zip, studentId) VALUES ('Diamond Rd', 1, 'Calabasas', 90290, 9);
insert into student_address(street, num, town, zip, studentId) VALUES ('Diamond Rd', 1, 'Calabasas', 90290, 10);

select * from student_address;

insert into class(id, class_subject) values (1, 'English');
insert into class(id, class_subject) values (2, 'Math');
insert into class(id, class_subject) values (3, 'Social Studies');
insert into class(id, class_subject) values (4, 'Science');
insert into class(id, class_subject) values (5, 'Art');
insert into class(id, class_subject) values (6, 'P.E.');

select * from class;

INSERT INTO student_class_assoc (studentId, classId) VALUES (1, 1);
INSERT INTO student_class_assoc (studentId, classId) VALUES (1, 2);
INSERT INTO student_class_assoc (studentId, classId) VALUES (1, 3);
INSERT INTO student_class_assoc (studentId, classId) VALUES (2, 1);
INSERT INTO student_class_assoc (studentId, classId) VALUES (2, 2);
INSERT INTO student_class_assoc (studentId, classId) VALUES (2, 3);
INSERT INTO student_class_assoc (studentId, classId) VALUES (3, 1);
INSERT INTO student_class_assoc (studentId, classId) VALUES (3, 4);
select * from student_class_assoc;

