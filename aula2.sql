USE sakila;

INSERT INTO country
	VALUES
		(DEFAULT, "Brasil2", "2005-02-15 04:44:00");
        
 INSERT INTO city
	VALUES
		(DEFAULT, "São Paulo2", last_insert_id(), "2005-02-15 04:44:00" );       
        