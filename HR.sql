create table student_verify(id number primary key,first_name varchar(10) not null,last_name varchar(10)not null,department varchar(10)not null,section varchar(10)not null);
insert into student_verify values(07,'AJITH','nagarajann','ece','b');
select * from student_verify;
create table library_checking(roll number primary key,first_name varchar(10) not null,department varchar(10)not null,reff number(10),CONSTRAINT ref_fk foreign key (reff) references student_verify(id));
insert into library_checking values(03,'AJITH','ece',07);
select* from library_checking;
create table book_borrow(serial number primary key,book_name varchar(10)not null,author varchar(10)not null,publication varchar(10),reg number(10),constraint reg_fk foreign key(reg)references library_checking(roll));
insert into book_borrow values(05,'oops','ajith','technical',03);
select* from book_borrow;
create table register_book(card number primary key,delivary daselect * from register_book;
te not null,return date not null,book number not null,constraint book_fk foreign key (book) references book_borrow(serial));
insert into register_book values(09,'07-aug-2018','08-sep-2018',05);
select * from register_book;

