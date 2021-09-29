declare
  type 
    country_tab is table of varchar2(50) index by varchar2(20);
    tcountry country_tab;
begin
  tcountry('IR') := 'IRAN';
  tcountry('DE') := 'GERMANY';
  tcountry('UK') := 'UNITED KINGDOM';
  tcountry('FR') := 'FRANCE';
  
  tcountry('IRDE') := 'IRAN-GERMANY';
  
  --dbms_output.put_line(tcountry.first || '-' || tcountry.last);
  
  begin
    dbms_output.put_line(tcountry('IRDE'));
  exception
    when no_data_found then
      dbms_output.put_line(sqlerrm);
  end;
end;
