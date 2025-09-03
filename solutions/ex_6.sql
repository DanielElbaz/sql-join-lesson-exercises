USE sql_intro;
SELECT ethnicity.name, COUNT(*)
from ethnicity,patient
where patient.disease='lettuce disease' AND patient.ethnicity=ethnicity.id
GROUP BY ethnicity.name