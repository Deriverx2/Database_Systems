 create database stock;

 use stock;

create table supp_tb(sup_id int primary key, sup_name varchar(255), constraint un_c unique(sup_name), Location varchar(255) default 'KOCHI');

insert supp_tb (sup_id,sup_name) values(1,'HFCL');

insert supp_tb values(2,'VED','KOLLAM');

insert supp_tb (sup_id,sup_name) values(3,'TCS');

insert supp_tb (sup_id,sup_name) values(4,'TVM');

 create table stock_tb(SL_No int primary key auto_increment=1,Stk_Name text not null, price float, constraint check1 check(price>=0),sup_id int, constraint foreign key(sup_id) references supp_tb(sup_id));

select * from supp_tb;

insert stock_tb (Stk_name, price,sup_id) values ('KMK',100,1);

 insert stock_tb (Stk_name, price,sup_id) values ('IOC',241,2);
