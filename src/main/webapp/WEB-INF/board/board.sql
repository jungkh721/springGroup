show tables;

create table board(
	idx int not null auto_increment,
	mid varchar(20) not null,
	nickName varchar(20) not null,
	title varchar(100) not null,
	content text not null,
	hostId varchar(30) not null,
	openSw char(2) default 'OK',
	readNum int default 0,
	wDate datetime default now(),
	good int default 0,
	complaint char(2) default 'NO',
	primary key(idx),
	foreign key(mid) references friend(mid)
);

desc board;
drop table board;

insert into board values (default,'admin','관리맨','게시판 서비스를 시작합니다','즐거운 게시판 생활되세요','192.168.50.56',default,default,default,default,default);

select *from board;




