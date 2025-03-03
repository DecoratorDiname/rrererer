select person.name, pizzeria.name
from (
select person_id, pizzeria_id
from person_visits
where visit_date between '2022-01-07' and '2022-01-09'
) as visits
join person on visits.person_id = person.id 
join pizzeria on visits.pizzeria_id = pizzeria.id
order by person.name, pizzeria.name DESC
