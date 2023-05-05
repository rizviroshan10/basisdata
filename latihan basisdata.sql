create database db_lagu
use db_lagu

create table tb_lagu(kd_lagu char(5)primary key, judul_lagu varchar(25),penyanyi varchar(30),tahun_lagu varchar(10))
create table tb_album(kd_album char(5)primary key,nama_album varchar(25),tahun_rilis varchar(4))
create table tb_penjualan(id_penjualan int identity(1,1)primary key, kd_lagu char(5)
 references tb_lagu(kd_lagu),kd_album char(5) references tb_album(kd_album), record_terjual int, streaming int)

insert into tb_lagu values ('L0001', 'Ternyata Cinta', 'Padi', '1999')
insert into tb_lagu values ('L0002', 'Masih Tetap Tersenyum', 'Padi', '2000')
insert into tb_lagu values ('L0003', 'Siapa Gerangan Dirinya', 'Padi', '2005')

insert into tb_lagu values ('L0004', 'Atas Nama Cinta', 'Dewa 19', '2000')
insert into tb_lagu values ('L0005', 'Cinta Gila', 'Dewa 19', '2002')
insert into tb_lagu values ('L0006', 'Pangeran Cinta', 'Dewa 19', '2003')

insert into tb_lagu values ('L0007', 'Jadikan aku pacarmu', 'Sheila on 7', '2003')
insert into tb_lagu values ('L0008', 'Dan', 'Sheila on 7', '2004')
insert into tb_lagu values ('L0009', 'Tertatih', 'Sheila on 7', '2005')

insert into tb_album values ('A0001', 'Indra Keenam', '2019')
insert into tb_album values ('A0002', 'Laskar Cinta', '1999')
insert into tb_album values ('A0003', 'Sheila on 7', '1999')

insert into tb_penjualan values ('L0001', 'A0001', 50000, 300000)
insert into tb_penjualan values ('L0002', 'A0001', 53000, 326700)
insert into tb_penjualan values ('L0003', 'A0001', 65000, 333900)
insert into tb_penjualan values ('L0004', 'A0002', 76000, 435600)
insert into tb_penjualan values ('L0005', 'A0002', 100000, 1300000)
insert into tb_penjualan values ('L0006', 'A0002', 150000, 967000)
insert into tb_penjualan values ('L0007', 'A0003', 51000, 535000)
insert into tb_penjualan values ('L0008', 'A0003', 31000, 615000)
insert into tb_penjualan values ('L0009', 'A0003', 29000, 423000)

select l.judul_lagu,l.penyanyi,l.tahun_lagu,a.nama_album, a.tahun_rilis,p.record_terjual,p.streaming
from tb_penjualan as p inner join tb_lagu as l on p.kd_lagu =l.kd_lagu inner join tb_album as a on p.kd_album =
 a.kd_album order by streaming desc

drop database db_lagu