create table emp5(empno int primary key,ename varchar(20),deptno number);
insert into emp5 values(:empno,:ename,:deptno);

select * from emp5;

DECLARE
VENO EMP5.empno%TYPE:=:empno;
VENAME EMP5.ename%TYPE;
VDEPTNO EMP5.deptno%TYPE;
BEGIN
SELECT empno,ename,deptno INTO VENO,VENAME,VDEPTNO FROM EMP5 WHERE empno=VENO;
DBMS_OUTPUT.PUT_LINE('EMPLOYEE NUMBER IS'||VENO);
DBMS_OUTPUT.PUT_LINE('ENAME IS'||VENAME);
DBMS_OUTPUT.PUT_LINE('DEPARTMENT NUMBER IS'||VDEPTNO);
EXCEPTION
WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('NO RECORD FOUND');
END

