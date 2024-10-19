
create table Emek5
(
	ID  int not null,
	Age int,
	check(Age >= 18) --burada bir şart koymuş oluypruz. age e en az 18 verebilriisn demektir
)


---default
create table Emek4
(
	ID  int not null,
	Age int,
	city varchar(50) default 'Kars'
)
