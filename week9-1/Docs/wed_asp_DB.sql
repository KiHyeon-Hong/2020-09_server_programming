-- 연결 -> 로컬 -> MSSQLDB 연결 하고, Wed_Asp_DB로 설정합니다

create table Test (
	id int identity(1,1) primary key,
	name varchar(20),
	tel_phone varchar(15)
);	--create table

drop table Test;	-- drop table



select * from Test;	--select

insert into Test(name, tel_phone) values('Mia', '010-6605-5379');	--insert

delete from Test where id=1;	--delete

update Test set name='Mia Luna TearMoon' where id=2;	--update

-- 프로그램에 연결을 해서 사용해보자
-- 한글을 입력하려면 name nvarchar(20)으로 만들고, N'이름'으로 입력하면 된다

create table Customer (
	customerNo int identity(1,1) primary key,
	name nvarchar(20) not null,
	socialNo varchar(15),
	tel varchar(15)
)

-- identity(1,1) - 증분한다, 100 이였으면 101, 102, 103 앞의 것을 지워도 가꾸로 돌아가지 않음
-- dateTime을 넣으면 2020-10-15 12:12:12 ??
-- date하면 뒤를 무시? 2020-10-15

create table Product (
	name nvarchar(20),
	color nvarchar(20),
	size nvarchar(20)
)
-- N 안쓰고 영문 적으면 영문임
-- constrant 걸어놓으면 제약조건으로 들어간다
-- order by의 default는 ASC
-- count, sum avg등 요약함수도 존재
-- 7장까지 진행했다

insert into Product(name, color, size) values(N'쿠션', N'파란색', N'대형');