USE sql_intro;
SELECT item_purchased,amount,company.name,industry
FROM transaction,company
WHERE transaction.company_id=company.id
