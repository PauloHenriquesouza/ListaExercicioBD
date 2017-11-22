# 9
create schema pratica05;

use pratica05;

# 10
create table if not exists dados_multimida(
codigo int auto_increment not null ,
nome  varchar (40),
tipo varchar (30),
dados longblob,
primary key (codigo)

); 

# 11
insert into dados_multimida (nome, tipo, dados) values 
('Groud','Foto' , 'load_file( "C:\\Users\\Paulo Henrique\\Pictures\\Banco de dados\\777751.jpg" )');

insert into dados_multimida (nome, tipo, dados) values 
('Paulo','Foto' , 'load_file( "C:\\Users\\Paulo Henrique\\Pictures\\Banco de dados\\Snapchat-1094252532.jpg" )');

insert into dados_multimida (nome, tipo, dados) values 
('PauloH','Foto' , 'load_file( "C:\\Users\\Paulo Henrique\\Pictures\\Banco de dados\\IMG_20170317_183538_312.jpg" )');

insert into dados_multimida (nome, tipo, dados) values 
('Carro','Foto' , 'load_file( "C:\\Users\\Paulo Henrique\\Pictures\\Banco de dados\\download.jpg" )');

insert into dados_multimida (nome, tipo, dados) values 
('Banco','Foto' ,'load_file( "C:\\Users\\Paulo Henrique\\Pictures\\Banco de dados\\Banco de dados tipos primitivos.PNG" )');

#12
select * from dados_multimida;

#13
SHOW VARIABLES LIKE 'secure_file_priv' ;

select dados into dumpfile "C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\imagem_export.jpg"
from dados_multimida
where codigo = 1 ;







