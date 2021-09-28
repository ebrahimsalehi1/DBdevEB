
SELECT First_Name,Count(First_Name) As Count_First_Name
FROM contacts
Group By First_Name
Having Count(First_Name)>1;


SELECT First_Name,Count(First_Name) As Count_First_Name,
Last_Name,Count(Last_Name) As Count_Last_Name
FROM contacts
Group By First_Name,Last_Name
Having Count(First_Name)>1 AND Count(Last_Name)>1;
