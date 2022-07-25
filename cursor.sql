declare cursor c1 is
select did,depname from department;
rec1 c1%rowtype;
begin
for rec1 in c1 loop
dbms_output.put_line(rec1.did || rec1.depname);
end loop;
end;
