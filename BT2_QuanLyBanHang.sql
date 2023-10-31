create database QuanLyBanHang1;
use QuanLyBanHang1;
create table Customer(
	cID int auto_increment primary key,
    cName varchar(50),
    cAge int
);
create table Orders(
	oID int auto_increment primary key,
    cID int not null,
    oDate datetime,
    oTatalPrice int,
    foreign key(cID) references Customer(cID)
);
create table Product(
	pID int auto_increment primary key,
    pName varchar(50) not null,
	pPrice int
);
create table OrderDetail(
	oID int not null,
    pID int not null,
    odQTY int,
    primary key(oID, pID),
    foreign key(oID) references Orders(oID),
    foreign key(pID) references Product(pID)
);