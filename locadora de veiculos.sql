Create table marca ( 

id marca int not null 
auto_increment primary key, 
descricao varchar (45));

Create table modelo ( 
id modelo int not null 
auto_increment primary key,
descricao varchar(45),
marca_idmarca int not null,
constraint pk_modelo_marca foreign key (marca_idmarca) references marca (idmarca)

);

Create table veiculo(
id veiculo int not null_increment primary key, 
placa varchar(45),
chassi varchar(45),
renavan varchar(45),
cor varchar(45).
ano year);

Create table seguro( 
idseguro int not null auto_increment primary key,
apolice varchar(45),
valor decimal (6,2),
vencimento date, 
veiculo_idveiculo int, 
constraint fk_seguro_veiculo foreign key(veiculo_idveiculo)references veiculo(idveiculo));

create table manuntencao( 
idmanuntencao int not null auto_increment primary key,
tipo ENUM('PREVENTIVA','CORRETIVA'), 
km int,
data date, 
descricao varchar(100), 
veiculo_idveiculo int not null, 
constraint fk_manutencao_veiculo foreign key (veiculo_idveiculo) references 
veiculo(idveiculo));

create table realizado( 
idrealizado int not null auto_increment primary key,
descricao varchar(45), 
valor decimal(6,2), 
manutencao_idmanutencao int not null, 
constraint fk_realizado_manutencao foreign key (manutencao_idmanutencao) references manutencao(idmanutencao));  

create table locatario(
idlocatario int not null auto_increment primary key, 
nome varchar(80), 
tipo ENUM('pj','pf'), 
rg varchar(45),
cpf_cnpj varchar(45), 
rua varchar(45), 
numero varchar(45), 
complemento varchar(45), 

cep varchar(45), 
bairro varchar(45),
cidade varchar(45));

create table telefone(
idtelefone int not null auto_increment primary key, 
tipo varchar(45),
ddd varchar(45),
numero varchar(45), 
locatario_idlocatario int not null, 
constraint fk_telefone_locatario foreign key (locatario_idlocatario)references
locatario(idlocatario));

create table locacao(
idlocacao int not null auto_increment primary key,
dtlocacao date)time, 
kminicial int, 
kmfinal int, 
valor double(6,2), 
observacoes longtext, 
locatario_idlocatario int not null, 
veiculo_idveiculo int not null, 
constraint fk_locacao_idlocatario foreign key(locatario_idlocatario) references locatario(idlocatario), 
constraint fk_locacao_veiculo foreign key(veiculo_idveiculo) references veiculo (idveiculo));