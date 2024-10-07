
create table Persons
(
	ID int not null,
	Lastname varchar(255) not null,
	Firstname varchar(255),
	Age int,
	City varchar (255) default 'Istanbul'
)
insert into Persons(ID,Lastname,Firstname,Age,City) values (3,'manduz','emek',29,'Kars')
insert into Persons(ID,Lastname,Firstname,Age) values (2,'manduz2','emek2',29) --City kýsmýný boþ býrakýrsan yukarýda tanýmlamýþ olduðun default kýsmýný yazar


select * from Persons

