USE carros;

CREATE TABLE marcas (
	marcas_id INT NOT NULL AUTO_INCREMENT,
    nome_marca VARCHAR(255) NOT NULL,
    primary key (marcas_id)
);

CREATE TABLE inventario (
	modelo_id INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(255) NOT NULL,
    transmissao VARCHAR(255) NOT NULL,
    motor VARCHAR(255) NOT NULL,
    combustivel VARCHAR(255) NOT NULL,
    marcas_id INT NOT NULL,
    PRIMARY KEY (modelo_id),
    FOREIGN KEY(marcas_id) REFERENCES marcas(marcas_id)
    );
    
CREATE TABLE clientes(
	cliente_id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
	endereco VARCHAR(255) NOT NULL,
    PRIMARY KEY (cliente_id)
    );
    
INSERT INTO clientes (nome, sobrenome, endereco)
VALUES
    ("Gabriela", "Generoso", "Rua 2"),
	("Selmir", "Cerbaro", "Rua 3"),
	("Jenara", "Lucateli", "Rua 4"),
	("Sophia", "Cerbaro", "Rua 5");

INSERT INTO carros.marcas (marcas_id, nome_marca, origem)
VALUES (1,'Ford', "Estados Unidos"),
       (2,'Chevrolet', "Estados Unidos"),
       (3,'Honda', "Japão"),
       (4,'Nissan', "Japão"),
       (5,'Audi', "Alemanha");

INSERT INTO carros.inventario (modelo, transmissao, motor, combustivel, marcas_id)
VALUES
 ('Ka','Manual','1.0','Flex',1),
 ('Celta','Manual','1.0','Alcool',2),
 ('Civic','Automático','2.0','Gasolina',3),
 ('Sentra','Automático','2.0','Flex',4),
 ('A5','Manual','1.6T','Gasolina',5);

















