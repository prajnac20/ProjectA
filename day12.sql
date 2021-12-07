create database example;
use example;
create table xtable(id int,xname varchar(20));
create table ytable(id int,yname varchar(20));
insert into ytable values(1,'y1');
insert into ytable values(2,'y2');
insert into ytable values(7,'y7');
insert into ytable values(4,'y4');
insert into ytable values(5,'y5');
insert into ytable values(8,'y8');



insert into xtable values(1,'x1');
insert into xtable values(2,'x2');
insert into xtable values(7,'x7');
insert into xtable values(4,'x4');
insert into xtable values(5,'x5');
insert into xtable values(8,'x8');
select xname,xtable.id,ytable.id,yname
from xtable inner join ytable
on xtable.id=ytable.id;
select * from xtable cross join ytable;
select * from xtable;
select xname,xtable.id,ytable.id,yname
from xtable left outer join ytable
on xtable.id=ytable.id;
select xname,xtable.id,ytable.id,yname
from xtable right outer join ytable
on xtable.id=ytable.id;
select x1.xname,x2.xname from xtable As x1 , xtable As x2
where x1.id=x2.id;
