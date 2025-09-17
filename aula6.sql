USE sakila;

SELECT 
	MAX(amount) AS Maior,
    MIN(amount) AS Menor,
    AVG(amount) AS Média,
    SUM(amount) AS 'Total Vendas',
    COUNT(amount) AS 'Número de vendas'
    
	FROM payment
    WHERE staff_id = 2