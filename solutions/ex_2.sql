USE sql_intro;

SELECT COUNT(disease)
FROM patient
where disease IS NOT NULL