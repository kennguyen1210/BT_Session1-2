create database KhoHang;
use KhoHang;
create table PhieuXuat(
	SoPX int primary key,
    NgayXuat date
);
create table VatTu(
	MaVTU varchar(20) not null primary key,
    TenVTU varchar(50) not null
);
create table ChiTietPhieuXuat(
	SoPX int not null,
    MaVTU varchar(50) not null,
    DGXuat float,
    SLXuat int,
    primary key(SoPX, MaVTU),
    foreign key(SoPX) references PhieuXuat(SoPX),
    foreign key(MaVTU) references VatTu(MaVTU)
);
create table PhieuNhap(
	SoPN int primary key,
    NgayNhap date
);
create table ChiTietPhieuNhap(
	SoPN int not null,
    MaVTU varchar(50) not null,
    DGNhap float,
    SLNhap int,
    primary key(SoPN, MaVTU),
    foreign key(SoPN) references PhieuNhap(SoPN),
    foreign key(MaVTU) references VatTu(MaVTU)
);
create table DonDH(
	SoDH int primary key,
    NgayDH date
);
create table NhaCungCap(
	MaNCC varchar(20) primary key,
    TenNCC varchar(50) not null,
    DiaChi varchar(100),
    SDT varchar(11)
);
create table ChiTietDonDatHang(
	SoDH int not null,
    MaVTU varchar(50) not null,
    DGDatHang float,
    SLDatHang int,
    MaNCC varchar(20) not null,
    primary key(SoDH, MaVTU),
    foreign key(SoDH) references DonDH(SoDH),
    foreign key(MaVTU) references VatTu(MaVTU),
    foreign key(MaNCC) references NhaCungCap(MaNCC)
);
