create batabase flight;

use flight;

create table Flight_tb(FNo Text, Fl_Name Text, Fl_from Text, Fl_to Text, Fare Float);

insert into Flight_tb values('AI01','AirIndia','Delhi','NewYork',75000);

insert into Flight_tb values('SIN02','SingaporeAirlines','Singapore','Seoul',45000);

insert into Flight_tb values('TA01','ThaiAir','Bangkok','Cochin',30000);

insert into Flight_tb values('AI02','AirIndia','Dubai','Delhi',55000);

insert into Flight_tb values('SR01','SrilankanAir','Tokyo','Colombo',35000);

insert into Flight_tb values('SIN03','SingaporeAirlines','HongKong','Singapore',85000);

 insert into Flight_tb values('TA04','ThaiAir','Delhi','Bangkok',28000);

select * from Flight_tb;

 create table Pass_tb(PassNo Text, Pass_Name Text, FNo Text);

 insert into Pass_tb values('A123','Jacquine','AI01');

insert into Pass_tb values('A124','Jacob','AI02');

insert into Pass_tb values('S332','Xavier','SIN02');

insert into Pass_tb values('S445','Manoj','TA04');

insert into Pass_tb values('S235','Krish','TA04');

insert into Pass_tb values('T557','Gerald','SIN03');

insert into Pass_tb values('C012','Danny','SR01');

insert into Pass_tb values('A133','Hardy','AI01');

insert into Pass_tb values('A113','Tom','AI02');

insert into Pass_tb values('S333','William','SIN02');

select * from Pass_tb;
