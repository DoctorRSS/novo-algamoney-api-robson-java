CREATE TABLE pessoa(
	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	ativo BOOLEAN NOT NULL,
	logradouro VARCHAR(50),
	numero VARCHAR(5),
	complemento VARCHAR(20),
	bairro VARCHAR(30),
	cep VARCHAR(9),
	cidade VARCHAR(30),
	estado VARCHAR(2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO pessoa (nome,ativo,logradouro, numero, bairro, cep, cidade, estado) 
values ('Oliver Queen', true, 'Rua Vênus', '30', 'Centro', '05656-999', 'Barueri', 'SP');
INSERT INTO pessoa (nome,ativo,logradouro, numero, bairro, cep, cidade, estado) 
values ('Tea Queen', false, 'Rua Jupter', '320', 'Centro', '05656-000', 'Carapicuíba', 'SP');
INSERT INTO pessoa (nome,ativo,logradouro, numero, bairro, cep, cidade, estado)
values ('Barry Allen', true, 'Rua Urano', '301', 'Centro', '05699-999', 'Osasco', 'SP');
INSERT INTO pessoa (nome,ativo,logradouro, numero, bairro, complemento, cep, cidade, estado) 
values ('Malcom Merilyn', true, 'Rua Terra', '666', 'Fazendinha', 'Bloco 3 apt. 2', '05699-666', 'Santana de Parnaíba', 'SP');
INSERT INTO pessoa (nome,ativo,logradouro, numero, bairro, complemento, cep, cidade, estado)
values ('John Diggle', true, 'Rua Marte', '969', 'Centro', 'Bloco 5 apt. 15', '07799-000', 'Rio de Janeiro', 'SP');

INSERT INTO pessoa (nome,ativo) values ('Slade Wilson', false);
INSERT INTO pessoa (nome,ativo) values ('Homero Diaz', false);
INSERT INTO pessoa (nome,ativo) values ('Zinedine Zidane', true);
INSERT INTO pessoa (nome,ativo) values ('Andreas Pirlo', true);
INSERT INTO pessoa (nome,ativo) values ('Edgar Davids', true);