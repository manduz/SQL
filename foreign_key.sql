--bir tabloya ait bir sütunun (veya sütun grubunun), baþka bir tablodaki Primary Key (birincil anahtar) sütununa referans verdiði kýsýtlamadýr. Bu, iki tablo arasýnda bir iliþki kurarak veritabanýndaki veri bütünlüðünü saðlar. Foreign key, veri doðruluðunu garanti eder ve referans verilen tablodaki kayýtlarla referans alan tablo arasýnda baðlantý kurulmasýný saðlar.
create table Employees
(
	EmployeeID  int not null,
	OrderNum int not null,
	PersonID int,
	primary key(EmployeeID),
	foreign key(PersonID) references People(PersonID) 
)

--burada Employees tablosundaki personID sütununu People tablosundaki personID sütünuna referans verdik
--Bu, her çalýþanýn bir departmana atanmýþ olmasýný saðlar. DepartmentID çalýþanlar tablosunda, Departments tablosunda tanýmlý bir deðer olmalýdýr.

--Employees tablosuna design deyip herhangi bir kolona sað týklayýp Relasitonship e girip hangi tablodan referans alýndýðýný kontrol edebiliyorsun

