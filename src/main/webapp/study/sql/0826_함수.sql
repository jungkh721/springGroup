show tables;

create table sungjuk(
	idx int not null auto_increment primary key,
	name varchar(20) not null,
	kor int,
	eng int,
	mat int
);

desc sungjuk;

insert into sungjuk values (default,'홍길동',100,90,80);
insert into sungjuk values (default,'김말숙',90,100,90);
insert into sungjuk values (default,'이기자',100,80,70);
insert into sungjuk values (default,'오하늘',80,60,40);
insert into sungjuk values (default,'김연아',50,80,70);
insert into sungjuk values (default,'강감찬',100,50,30);
insert into sungjuk values (default,'김 솔',100,50,30);

select *from sungjuk;

select count(idx) from sungjuk;
select sum(kor), sum(eng), sum(mat) from sungjuk;
select avg(kor), avg(eng), avg(mat) from sungjuk;

select count(kor) as korCnt, sum(kor) as korSum, avg(kor) as korAvg from sungjuk;

select max(kor) as korMax, min(kor) as korMin from sungjuk;
--묹자열 결합concat()
select concat(max(kor), '점')as korMax,  concat(min(kor), '점') as korMin from sungjuk;

--출력용 형식 format() 지정
select avg(kor), avg(eng), avg(mat) from sungjuk;
select format(avg(kor),1), format(avg(eng),2), format(avg(mat),3) from sungjuk;
select '1234567', format('1234567',0);
--수치함수
select 123.456 as su;

--반올림 round()
select 123.456 as su, round(123.456) as res;
select 123.456 as su, round(123.456, 1) as res;
select 123.456 as su, round(123.456, 2) as res;
select 123.456 as su, round(123.456, -1) as res;


--버림(절삭) truncate()
select 123.456 as su, truncate(123.456, 0) as res;
select 123.456 as su, truncate(123.456, 1) as res;
select 123.456 as su, truncate(123.456, 2) as res;
select 123.456 as su, truncate(123.456, -1) as res;

--무조건 올림 ceil() 무조건 내림 floor()
select 123.456 as su, ceil(123.456) as res;
select 123.456 as su, floor(123.456) as res;

--나머지 mod()
select mod(10,3) as na;

--거듭제곱 (지수승) power()
select power(2,5) as 2의5승;

--숫자 리스트중에 가장큰값greatest() 작은값least()
select greatest(15, 4, 21, 7, 9) as max;
select least(15, 4, 21, 7, 9) as min;

--문자함수
--문자열의 길이 :length() -바이트 단위
select length('seoul');
select length('서울');
select length(name), length(kor) from sungjuk;

--실제 문자개수로 변환 char_length
select char_length('seoul');
select char_length('서울');
select char_length(name), char_length(kor) from sungjuk;

--대문자(upper) 소문자(lower)
select 'seoul', upper('sEoUl'), lower('sEoUl');

--문자열빌췌 substring(데이터 ,시작위치, 발췌개수): 시작위치를 1부터 처리
select '1234567890', substring('1234567890', 1, 5);
select '1234567890', substring('1234567890', 2, 5);
select now(), substring(now(),1,10);
select now(), substring(now(),12,8);

--특정 문자열의 유무 instr() 값이 있으면 위치값을 없으면 0을 출력
select 'welcome to korea!!!' as str, instr('welcome to korea!!!','o');
select 'welcome to korea!!!' as str, instr('welcome to korea!!!','z');
select 'welcome to korea!!!' as str, instr('welcome to korea!!!',' ');

--특정문자를 기준(개수위치)으로 이전까지만 출력
select substrin_index('ab.cd.efg.h.ijkl.mn', '.', 1)
select substrin_index('ab.cd.efg.h.ijkl.mn', '.', 2)
select substrin_index('ab.cd.efg.h.ijkl.mn', '.', 3)

--왼쪽(오른족)부터 지정길이만큼 문자 추출 left() right() mid()
select 'abcdfg', left('abcdfg', 3), right('abcdfg', 3), mid('abcdfg', 3, 2);

--공백지우기 trim(), ltrim() rtrim()
select ' s e o u l ', trim(' s e o u l '), ltrim(' s e o u l '), rtrim(' s e o u l ');

--치환 replace()
select 'welcome to korea!!!', replace('welcome to korea!!!', ' ', '_');

--채우기 insert()
select '가나다라마바사아', insert('가나다라마바사아', 2, 3, '***')
select '가나다라마바사아', insert('가나다라마바사아', 2, 3, '*')

--반복 repeat()
select repeat('*',10);
select repeat('abd',10);
select repeat('/abd',10);

-------------------------------------------------------------------------------

--날짜함수 
select now();
select year(now()), month(now()), day(now());

select *from insa;
select name, ipsail from insa;
select name, ipsail, month(insail), day(insail) from insa;
select name, concat(year(ipsail),'년 ', month(insail),'월 ', day(insail), '일') from insa;
select name, concat(year(ipsail),'-', month(insail),'-', day(insail)) from insa;

--요일 :일요일(0), 월요일(1) ....
--날짜 포멧형식(date_format) : y(년도 2자리), Y(년도4자리) c(한자리월) m(두자리월) M(월을 문자로) d:일
select now();
select date_format(now(), '%y-%m-%d');
select date_format(now(), '%Y-%m-%d');
select date_format(now(), '%Y-%M-%d');
select date_format(now(), '%Y년 %m월 %d일');

--날짜 연산 date_add(), to_days(), datediff(), timediff()-뒤에서 앞족은 빼준다,timestampdiff()
select now(), date_add(now(), interval 1 day);
select now(), date_add(now(), interval -1 day);
select now(), date_add(now(), interval 24 hour);
select now(), date_add(now(), interval 10 hour);
select now(), date_add(now(), interval 1 month);
select now(), date_add(now(), interval 1 year);
select now(), date_add(now(), interval -1 year);

select now(), now() -1;
select now(), to_days(now()) - to_days('2025-8-1');
select name, ipsail, to_days(now()) - to_days(ipsail) from insa;

select now(), datediff(now(), '2025-8-1');
select now(), datediff(now(), ipsail) from insa;

select now(), timediff(now(), '2025-8-26 9:30');

-- 시간차이(timestampdiff()) :시(hour) 분(minute) 초(second)
select now(), timestampdiff(hour, '2025-8-26 9:30', now());
select now(), timestampdiff(minute, '2025-8-26 9:30', now());
select now(), timestampdiff(second, '2025-8-26 9:30', now());
select now(), timestampdiff(hour, ipsail, now()) from insa;

-- 마지막일자 구하기 last_day()
select now(), last_day(now());
select now(), last_day('2025-2-5');
select now(), last_day('2024-2-5');





select * from sungjuk;
