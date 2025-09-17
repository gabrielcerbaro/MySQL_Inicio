USE sakila;

SELECT 
	cus.customer_id,
    cus.first_name Nome,
    cus.last_name Sobrenome,
    SUM(amount) AS Total,
    AVG(amount) AS Média
    
FROM payment pay
JOIN customer cus USING(customer_id)
	
	GROUP BY customer_id
	ORDER BY Média DESC