create database datacenterinfra;
use datacenterinfra;

create table servidorees(
id_servidores  int auto_increment primary key,
nome_servidor varchar(50),
ip_servidores varchar(50),
sistema_operacional varchar(50)
);
create table racks(
id_servidores  int auto_increment primary key,
nome_rack varchar(50),
localizacao varchar(100),
id_servidor int, 
foreign key(id_servidor) references servodpres(id_servidor)
);

alter table racks add capacidade_em_terabytes float;

alter table servidores drop column sistema_operacional;

alter table racks rename column nome_rack to indentificador_racks;

alter table servidores modify  column ip_servidor varchar(30);

create table equipamentos(
id_equipamentos int auto_increment primary key,
nome_equipamento varchar(30),
tipo_equipamento varchar(40),
id_rack int,
foreign key(id_rack) references racks(id_racks)
);

create table rede(
id_rede int auto_increment primary key,
nome_rede varchar(50),
subnet varchar(50),
gateway varchar(30),
id_servidor int,
foreign key(id_servidor) references servidores(id_servidor)
);
create table log(
id_log int auto_increment primary key,
descricao varchar(30),
data_hora datetime,
id_servidor int,
id_rede int,
foreign key(id_servidor) references Servidores(id_servidores),
foreign key (id_rede) references rede(id_rede)
)
