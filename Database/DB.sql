Create database fastparking;

use fastparking;

create table preco (
	id int primary key auto_increment,
    primeira_hora decimal (10,2) not null,
    demais_horas decimal(10,2) not null
);
	
    
create table cliente (
	id int primary key auto_increment,
    nome_cliente varchar(255) not null,
    placa_carro varchar(10) not null,
    data_hora_entrada datetime not null,
    data_hora_saida datetime,
    valor_total decimal (10,2),
    preco_id INT,
    foreign key (preco_id) references preco (id)
);

insert into cliente (nome_cliente, placa_carro, data_hora_entrada, idPreco) 
	values ('Fulano de Tal','HFG-4240', '2021-07-10 12:17:41', 1 );
    

INSERT INTO preco ( primeiraHora, demaisHoras) 
	VALUES  (3,5)
truncate cliente;

delete from preco where id <> 0;

select * from cliente;

select * from preco;