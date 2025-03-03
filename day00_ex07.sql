SELECT 
person.id, 
person.name,
case
when person.age >= 10 AND person.age <= 20 then'interval #1' 
when person.age > 20 AND person.age < 24 then 'interval #2' 
else'interval #3' end AS interval_info
from person order by interval_info
