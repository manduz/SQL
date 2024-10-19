--bir tabloya ait bir s�tunun (veya s�tun grubunun), ba�ka bir tablodaki Primary Key (birincil anahtar) s�tununa referans verdi�i k�s�tlamad�r. Bu, iki tablo aras�nda bir ili�ki kurarak veritaban�ndaki veri b�t�nl���n� sa�lar. Foreign key, veri do�rulu�unu garanti eder ve referans verilen tablodaki kay�tlarla referans alan tablo aras�nda ba�lant� kurulmas�n� sa�lar.
create table Employees
(
	EmployeeID  int not null,
	OrderNum int not null,
	PersonID int,
	primary key(EmployeeID),
	foreign key(PersonID) references People(PersonID) 
)

--burada Employees tablosundaki personID s�tununu People tablosundaki personID s�t�nuna referans verdik
--Bu, her �al��an�n bir departmana atanm�� olmas�n� sa�lar. DepartmentID �al��anlar tablosunda, Departments tablosunda tan�ml� bir de�er olmal�d�r.

--Employees tablosuna design deyip herhangi bir kolona sa� t�klay�p Relasitonship e girip hangi tablodan referans al�nd���n� kontrol edebiliyorsun

