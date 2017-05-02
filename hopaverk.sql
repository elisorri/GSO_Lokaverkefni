create database 2106993339_hopaverkefni;

use 2106993339_hopaverkefni;

create table utgefandi
(
	id int(2) primary key not null,
    Nafn varchar(32)
);

create table diskur
(
	id int(2) primary key not null,
    Nafn varchar(32),
    utgafuar int(4),
    Tegund_disks varchar(32),
    utgefandi_id int(2) not null,
    foreign key (utgefandi_id) references utgefandi(id)
);

create table Flokkur
(
	id int(2) primary key not null,
    Nafn varchar(32)
);

create table flytjandi
(
	id int(2) primary key,
    nafn varchar(32),
    faedingardagur date,
    lysing varchar(12),
    danardagur date,
    flokkur_id int(2) not null,
    foreign key (flokkur_id) references Flokkur(id)
);

create table tegund
(
	id int(2) primary key,
    nafn varchar(32)
);

create table hofundur
(
	id int(2) primary key not null,
    nafn varchar(32),
    faedingardagur date,
    danardagur date
);

create table lag
(
	id int(2) primary key not null,
    nafn varchar(32),
    lengd int(6) ,
    texti longtext,
    diskur_id int(2),
    tegund_id int(2),
    hofundur_id int(2),
    flytjandi_id int(2),
    foreign key (diskur_id) references diskur(id),
    foreign key (tegund_id) references tegund(id),
    foreign key (hofundur_id) references hofundur(id),
    foreign key (flytjandi_id) references flytjandi(id)
);