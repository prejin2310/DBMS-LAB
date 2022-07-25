create or replace procedure list(id number) is
cursor c1 is
select did,depname from department where did=id;
rec1 c1%rowtype;
begin
for rec1 in c1 loop
dbms_output.put_line(rec1.did || ' ' || rec1.depname);
end loop;
end;
