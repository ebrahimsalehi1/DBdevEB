select *
from numbers
where rownum<5;

select *
from numbers
fetch next 25 percent rows only;

