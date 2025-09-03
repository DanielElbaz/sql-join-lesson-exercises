USE sql_intro;
SELECT item_purchased,amount,co.name,industry
FROM transaction AS tr,company AS co
WHERE tr.company_id=co.id