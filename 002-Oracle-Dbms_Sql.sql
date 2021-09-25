Declare
  v1 Varchar2(1000):='create table tbl1(t1 number)';
  cur pls_integer;
  res pls_integer;
begin
  cur:= dbms_sql.open_cursor;
  Dbms_Sql.parse(cur,v1,dbms_sql.native);
  res := dbms_sql.execute(Cur);
  dbms_output.put_line('result:'||res);
  Dbms_Sql.close_cursor(cur);                   
end;  
