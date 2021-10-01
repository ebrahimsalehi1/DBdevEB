create table developers(
    id int(10) auto_increment primary key,
    name varchar(40),
    jobs json
)

insert into developers(name,jobs)
values(
    'Ebrahim',
    '{"name":"Fullstack Developer","languages":["python","javascript","SQL","HTML"]}'
)

-- way 2 for inserting new row 

insert into developers(name,jobs)
values(
    'Ebrahim',
    json_object(
        'name','Fullstack Developer',
        "languages",json_array("python","javascript","SQL","HTML")
    )
)

-- fetching data

select name,json_extract(jobs,"$.name"),
json_extract(jobs,"$.languages")
from developers