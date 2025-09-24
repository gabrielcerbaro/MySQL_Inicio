USE sakila;

SELECT 
	cus.customer_id,
    cus.first_name Nome,
    cus.last_name Sobrenome,
    SUM(amount) AS Total,
    AVG(amount) AS Média,
    COUNT(amount) AS Compras
    
FROM payment pay
JOIN customer cus USING(customer_id)
	
	GROUP BY customer_id
    HAVING total >= 150 AND Compras >= 35
	ORDER BY Média DESC