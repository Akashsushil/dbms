create or replace trigger trig1
after insert
on dept1 
for each row
begin 
update emply set salary=40000 where deptid=20;
end;
insert into dept1 values(:deptid,:deptname,:mgrid,:locid);
select * from emply;
