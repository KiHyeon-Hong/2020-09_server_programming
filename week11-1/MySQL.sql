create table tblBrd(
num					int identity(1,1) primary key,
name					nvarchar(20),
pass					nvarchar(20),
email					varchar(20),
title						nvarchar(50),
contents			ntext,
writedate			varchar(20),
readcnt				int
)

select * from tblBrd;

drop table tblBrd;