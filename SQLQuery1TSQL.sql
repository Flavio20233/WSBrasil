use Romullus;

create database romullus;

IF OBJECT_ID ('','P') IS NOT NULL
DROP PROCEDURE Alomundo;
GO 
CREATE PROCEDURE Alomundo
AS
BEGIN
	PRINT 'ALOMUNDO'
END;
	
EXEC Alomundo;

DROP PROCEDURE Alomundo1;

IF OBJECT_ID('Alomundocomvariavel','P') IS NOT NULL
DROP PROCEDURE AlomundoComvariavel;

 CREATE PROCEDURE AloMundoComVariavel
AS
BEGIN
	declare @mensagem  VARCHAR(100);

SET @mensagem = 'ALO,MUNDO!';

PRINT @Mensagem;
END;

Go

 
   create table Tipocontato(
   Id int primary key identity (1,1),
   Nome varchar(80)
   );

   create table Contatosite(
   Id Int Primary key identity (1,1),
   Nome Varchar (80),
   email varchar (80),
   mensagem text ,
   DataHora Datetime,
   fk_TipoContato_ID int )
   ;

   Create Procedure DeletaDado
   @i_tipo int
   as
   begin
     delete from Tipocontato
      Where Id = @id_tipo
   end;


if object_id ('InserirDado') is not null
Drop procedure InserirDado;
Go 
create procedure InserirDado
@nome varchar (80)
as
begin
insert into Tipocontato(nome) values (@nome);
end;

  exec InserirDado @nome = 'Nao encontrei o imovel';
  exec InserirDado @nome = 'Nao encontrei o Vendedor';
  exec InserirDado @nome = 'Quero Vender ';
  exec InserirDado @nome = 'critica';
  exec InserirDado @nome = 'Sugestoes';

  

  select * from Tipocontato;

  select * from contatosite;
  
  
  insert into contatosite (nome ,email,mensagem,Datahora, 
  fk_TipoContato_ID)
  values('Joao','joao@email','nao encotrei o Imovel','2023-05-04T14:26:01',18);
  
  insert into contatosite (nome ,email,mensagem,Datahora,fk_TipoContato_ID)
  values('jose','jose@email','sem anuncio','2023-06-02T15:15:25',22);

  
  insert into contatosite (nome ,email,mensagem,Datahora, 
  fk_TipoContato_ID)
  values('Tiago','tiago@email','quero vender','2023-06-02T14:35:28',20);

  insert into contatosite (nome ,email,mensagem,Datahora, 
  fk_TipoContato_ID)
  values('marcos','marcos@email','critica','2023-01-29T16:55:28',18);

  insert into contatosite (nome ,email,mensagem,Datahora, 
  fk_TipoContato_ID)
  values('karina','karina@email','critica','2023-09-29T22:15:28',21);

  
  use romullus;

  /* Lógico_1: */

CREATE TABLE Usuario (
    ID INT PRIMARY KEY identity (1,1),
    Nome varchar(80),
    Senha varchar(32),
    DataHoraCriacao datetime,
    DataHoraUltimoAcesso datetime,
    Email varchar(80),
    fk_TipoUsuario_ID int
);


 
CREATE TABLE TipoUsuario (
    ID int PRIMARY KEY identity (1,1),
    Tipo varchar(80)
);

CREATE TABLE Cidade (
    Nome_cidade varchar(60),
    ID int PRIMARY KEY identity (1,1),
    fk_UF_ID int
);
 
CREATE TABLE Bairro (
    ID INT PRIMARY KEY identity (1,1),
    Nome_bairro varchar(80),
    fk_Cidade_ID int
);

CREATE TABLE UF (
    ID int PRIMARY KEY identity (1,1),
    Nome_UF varchar(80),
    Sigla_UF varchar(80)
);

CREATE TABLE Endereco (
    ID int PRIMARY KEY identity (1,1),
    Logradouro varchar(120),
    Numero varchar(80),
    Complemento varchar(80),
    fk_Bairro_ID INT
);

CREATE TABLE TipoAnuncio (
    ID INT PRIMARY KEY identity (1,1),
    Nome_Tipo_Anuncio varchar(120)
);

CREATE TABLE Imovel (
    Qtd_vaga INT,
    Qtd_quarto INT,
    Qtd_suite INT,
    Qtd_banheiro INT,
    Comodidade text,
    Area_util int,
    Valor_imovel decimal,
    ID int PRIMARY KEY identity (1,1),
    Observacoes text,
    fk_TipoImovel_ID int,
    fk_Endereco_ID int,
    fk_TipoAnuncio_ID INT
);

CREATE TABLE TipoImovel (
    ID int PRIMARY KEY identity (1,1),
    NomeTipoImovel varchar(80)
);

CREATE TABLE Imagem (
    ID int PRIMARY KEY identity (1,1),
    Nome_Imagem varchar(80),
    url text,
    fk_Imovel_ID int
);

insert into Imagem(Nome_Imagem,url,fk_Imovel_ID)values
('CasaA1','C:\Users\ead\Desktop\Flavio\WSBRASIL\Projeto Teste PHP - PE\ASSETS\CasaA1.jpeg',5),
('CasaA2','C:\Users\ead\Desktop\Flavio\WSBRASIL\Projeto Teste PHP - PE\ASSETS\CasaA2.jpeg',5),
('CasaB1','C:\Users\ead\Desktop\Flavio\WSBRASIL\Projeto Teste PHP - PE\ASSETS\CasaB1.jpg',6),
('CasaB2','C:\Users\ead\Desktop\Flavio\WSBRASIL\Projeto Teste PHP - PE\ASSETS\CasaB2.jpg',6),
('CasaC1','C:\Users\ead\Desktop\Flavio\WSBRASIL\Projeto Teste PHP - PE\ASSETS\CasaC1.jpg',7),
('CasaC2','C:\Users\ead\Desktop\Flavio\WSBRASIL\Projeto Teste PHP - PE\ASSETS\CasaC2.jpg',7),
('CasaD1','C:\Users\ead\Desktop\Flavio\WSBRASIL\Projeto Teste PHP - PE\ASSETS\CasaD1.jpeg',8),
('CasaD2','C:\Users\ead\Desktop\Flavio\WSBRASIL\Projeto Teste PHP - PE\ASSETS\CasaD2.jpeg',8),
('CasaE1','C:\Users\ead\Desktop\Flavio\WSBRASIL\Projeto Teste PHP - PE\ASSETS\CasaE1.jpg',9),
('CasaE2','C:\Users\ead\Desktop\Flavio\WSBRASIL\Projeto Teste PHP - PE\ASSETS\CasaE2.jpeg',9),
('CasaF1','C:\Users\ead\Desktop\Flavio\WSBRASIL\Projeto Teste PHP - PE\ASSETS\CasaF1.jpeg',10),
('CasaF2','C:\Users\ead\Desktop\Flavio\WSBRASIL\Projeto Teste PHP - PE\ASSETS\CasaF2.jpeg',10),
('CasaG1','C:\Users\ead\Desktop\Flavio\WSBRASIL\Projeto Teste PHP - PE\ASSETS\CasaG1.jpeg',11),
('CasaG2','C:\Users\ead\Desktop\Flavio\WSBRASIL\Projeto Teste PHP - PE\ASSETS\CasaG2.jpeg',11),
('CasaH1','C:\Users\ead\Desktop\Flavio\WSBRASIL\Projeto Teste PHP - PE\ASSETS\CasaH1.jpeg',12),
('CasaH2','C:\Users\ead\Desktop\Flavio\WSBRASIL\Projeto Teste PHP - PE\ASSETS\CasaC2.jpeg',12);

select * from Imagem;

CREATE TABLE tbl_login (
    Id  int PRIMARY KEY identity (1,1),
    email varchar(80),
    senha  varchar(32),
    fk_Usuario_Id INT
);
 
ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_2
    FOREIGN KEY (fk_TipoUsuario_ID)
    REFERENCES TipoUsuario (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Cidade ADD CONSTRAINT FK_Cidade_2
    FOREIGN KEY (fk_UF_ID)
    REFERENCES UF (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Bairro ADD CONSTRAINT FK_Bairro_2
    FOREIGN KEY (fk_Cidade_ID)
    REFERENCES Cidade (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Endereco ADD CONSTRAINT FK_Endereco_2
    FOREIGN KEY (fk_Bairro_ID)
    REFERENCES Bairro (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Imovel ADD CONSTRAINT FK_Imovel_2
    FOREIGN KEY (fk_TipoImovel_ID)
    REFERENCES TipoImovel (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Imovel ADD CONSTRAINT FK_Imovel_3
    FOREIGN KEY (fk_Endereco_ID)
    REFERENCES Endereco (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Imovel ADD CONSTRAINT FK_Imovel_4
   FOREIGN KEY (fk_TipoAnuncio_ID)
    REFERENCES TipoAnuncio(ID)
    ON DELETE CASCADE; 

	select*from TipoAnuncio;
 select*from imovel;
exec sp_rename 'Login.fk_Imovel_Id','fk_Usuario_Id','Column';
ALTER TABLE Imagem ADD CONSTRAINT FK_Imagem_2
    FOREIGN KEY (fk_Imovel_ID)
    REFERENCES Imovel (ID)
    ON DELETE CASCADE;

 
ALTER TABLE login ADD CONSTRAINT FK_login_2
    FOREIGN KEY (fk_Usuario_id)
    REFERENCES Usuario (ID)
	ON DELETE CASCADE;

 
 select  * from sys.tables;

USE ROMULLUS;


insert into UF (Nome_UF , sigla_UF) values ('Brasilia', 'df'),('Acre','AC'),('Alagoas','AL'),
('Amapa','AP'),('Amazonas','AM'),('Bahia','BA'),('Ceara','CE'),('Espirito Santo','ES'),
('Goias','GO'),('Maranhao','MA'),('Mato Grosso','MT'),('Mato Grosso do sul','MS'),
('Minas Gerais','MG'),('Para','PA'),('Paraiba','PB'),('Parana','PR'),('Pernabuco','PE'),
('Piaui','PI'),('Rio de Janeiro','RJ'),('Rio Grande do norte','RN'),('Rio Grande do Sul','RS'),('Rondonia','RO'),
('Roraima','RR'),('Santa Catarina','SC'),('Sao Paulo','SP'),('Sergipe','SE'),('Tocantins','TO');

insert into cidade(Nome_cidade,fk_UF_ID)values('Ceilandia',1),('Taguatinga',1),('Guara',1),('Assis Brasil',2),
('Brasileia',2),('Bujari',2),('Maceio',3),('Agua Branca',3),('Maceio',3),('Macapa',4),('Porto',4),('Itabau',4),
('Manaus',5),('Canutama',5),('Labreas',5),('Barreiras',6),('Barra',6),('Boa nova',6),('Acarau',7),('Fortaleza',7),('Itapipoca',7),
('Alegre',8),('Feira da Mata',8),('Guarapari',8),('Goias',9),('Abadia de Goias',9),('Cabeciras',9),('Barreirinhas',10),('Coelho neto',10),('Raposa',10),
('Jaciara',11),('Mirassol',11),('Colniza',11),('Barra do Garaças',12),('Comodoro',12),('Itauba',12),('Varginha',13),('Passos',13),('Sete lagoas',13),('Breves',14),('Irituia',14),('Juruti',14),
('Belem',15),('Camalau',15),('Campina Grande',15),('Cambe',16),('Esperança nova',16),('Guaraci',16),('Buique',17),('Ferreiros',17),('Jacati',17),('Oeiras',18),('Parnaiba',18),('Simoes',18),
('Itatiaia',19),('Macae',19),('Niteroi',19),('Japi',20),('Lajes',20),('Grossos',20),('Arroio do Meio',21),('Caibate',21),('Espumoso',21),('Porto Velho',22),('Rio Crespo',22),('Urupa',22),
('Rorainopolis',23),('Iracema',23),('Bomfim',23),('Blumenal',24),('Bom Jesus',24),('Caçador',24),('Santo Andre',25),('Osasco',25),('Sorocaba',25),('Estancia',26),('Moita Bonita',26),('Pedrinhas',26),
('Almas',27),('Miranorte',27),('Sandolandia',27);

insert into Bairro(Nome_bairro,fk_Cidade_ID)values('P norte',1),('Areal',1),('Bosque',2),('Ceramica',2),('Jaragua',3),('Ilha do Ferro',3),('Trem',4),('Congos',4),('lago Azul',5),('Novo Aleixo',5),
('Ondina',6),('Barra',6),('Guarapapes',7),('Fatima',7),('Boa Vista',8),('Ortiz',8),('Murumbi',9),('Perin',9),('Cidade Operario',10),('cohab',10),('Altos do Coxipo',11),('Jardim das Americas',11),
('Alba',12),('Acacias',12),('Canaa',13),('miramar',13),('Barreiro',14),('Aura',14),('Tambau',15),('Bessa',15),('Campo Cumprido',16),('Sanatana',16),('Macaxeira',17),('Pina',17),('Fatima',18),('Ininga',18),
('Leblom',19),('Tijuca',19),('Salinas',20),('Candelaria',20),('Bela Vista',21),('Bela vista',21),('Porto Velho',22),('Olaria',22),('Olimpio',23),('Santa Tereza',23),('Jurere',24),('Cacupe',24),
('Pinheiros',25),('Moema',25),('Jardins',26),('Atalaia',26),('Taquarussu',27),('Sonho Meu',27);

 insert into Endereco(logradouro,numero,complemento,fk_Bairro_ID)values('Eqnp 17 conjunto B',10,'Casa Branca',1),('QI 10 Bloco A',14 ,'Esquina',1),
 ('Quadra12 Lote05 Unidade 02 ',12,'lateral do mercado',2),('Rua Marechal Deodoro 340',12,'esquina',2),('Rua Professor José da Silveira Camerino', 290,'Estado ALAGOAS',3),('Rua José Ferreira da Silva 102',25,'Alagoas',3),
 ('Rua Água-marinha',13,'frente da escola',6),('Avenida Vereador Roberto Garrido de Souza',15,'batalhao',6);

 

 insert into TipoAnuncio(Nome_Tipo_Anuncio)values('Venda'),('Aluguel');

 insert into TipoImovel(NomeTipoImovel)values('Casa'),('Apartamento'),('Imovel comercial'),('Fazenda');

insert into TipoUsuario(Tipo)values('Administrador'),('Corretor'),('Administrativo'),('Financeiro');

 insert into Imovel (Qtd_vaga,Qtd_quarto,Qtd_suite,Qtd_banheiro,Comodidade,Area_util,Valor_imovel,Observacoes,
 fk_TipoImovel_ID,fk_Endereco_ID,fk_TipoAnuncio_ID)values
 (2,3,2,1,'Area livre',95,'350.000','Area com lazer e segurança',1,8,1),
 (2,1,1,2,'Area de serviço',100,'150.000','segurança',2,5,3),
 (2,3,2,2,'Criacao de animais',350,'4.500','Otima localizaçao',4,3,2),
 (1,1,1,2,'perto de escola',120,'120.000','super seguro',1,2,1),
 (2,2,1,1,'mobiliado',100,'250.000','suite master',1,1,2),
 (3,4,2,2,'loja grande',350,'450.000','com sub solo',1,7,1),
 (2,2,1,2,'Area Verde',320,'350.000','Area Verde',1,4,2),
 (7,4,3,3,'Area Rural',1.500,'650.000','Com Rio',1,6,2);

 insert into usuario(Nome,senha, DataHoraCriacao,DataHoraUltimoAcesso,Email,fk_TipoUsuario_ID)values('Vitor','12345',Getdate(),
 Getdate(),'vitor@email',1);
 insert into usuario(Nome,senha, DataHoraCriacao,DataHoraUltimoAcesso,Email,fk_TipoUsuario_ID)values('Joao','67893',Getdate(),
 Getdate(),'joao@email',2);
insert into usuario(Nome,senha, DataHoraCriacao,DataHoraUltimoAcesso,Email,fk_TipoUsuario_ID)values('vitoria','98754',Getdate(),
 Getdate(),'vitoria@email',3);insert into usuario(Nome,senha, DataHoraCriacao,DataHoraUltimoAcesso,Email,fk_TipoUsuario_ID)values('Flavio','12345',Getdate(),
 Getdate(),'Flavio@email',4);

 insert into tbl_login(email,senha,fk_imovel_ID)values('vitor@email','12345',1);
 insert into tbl_login(email,senha,fk_imovel_ID)values('joao@email','67893',2);
 insert into tbl_login(email,senha,fk_imovel_ID)values('vitoria@email','98754',3);
 insert into tbl_login(email,senha,fk_imovel_ID)values('Flavio@email','12345',4);

 insert into Imagem(Nome_Imagem,url,fk_Imovel_ID)values('Casa1',

 exe Alterarsenha @Usuario - 1, @Nova senha = '123@123';
 use Romullus;

delete from dbo.usuario where ID > = 5;
select * from usuario;
select * from uf;
select * from cidade;
select * from bairro;
select * from endereco;
select * from TipoAnuncio;
select * from TipoImovel;
select * from TipoUsuario; 
select * from Imovel;
select * from tbl_login;

Create Procedure Alterarsenha
@usuarioID int,
@NovaSenha varchar(32)
as
begin 

update Usuario set Senha = @NovaSenha
where Usuario . ID = @UsuarioID

end;

exec Alterarsenha @UsuarioID = 1, @Novasenha = '123@123';

create function CalcularvalorTotalportipo (@TipoImovelID int)
Returns decimal (10,2)
as
Begin
declare @valorTotal decimal;
select @valorTotal = sum(valor_imovel)
from imovel
where Fk_TipoImovel_ID = @TipoImovelID;
Return @ValorTotal;
END;

create procedure ImagensporImovel
@imoveIID int
as
begin
 select * from Imagem
 where fk_Imovel_ID = @imoveIID;
end;

execute ImagensporImovel @ImoveIID = 1;

create procedure Inserirlog
@id int,
@email varchar (120),
@senha varchar (32),
@fkUsuario int
as
begin
 insert into login (ID,Email,senha,ID_Usuario)
 values (@id,@email,@senha,@fkUsuario);
 end ;

go

exec Inserirlog @id = 2,
@email = 'email324',@senha = '987654',@fkUsuario = 1;

go

create procedure Deletlog
@id int 
as
begin

 delete from tbl_login where id = @id;
 end 

 go

 exec Deletlog @id = 1; 

 drop procedure Deletlog

 select * from tbl_login;
 go 
 /* buscar imovel por tipo de anuncio*/
 create procedure ImoveisTipoAnuncio
 @idtipo int
 as 
begin
 select * 
 from Imovel
 where fk_TipoAnuncio_ID = @idTipo;
 end;

  exec ImoveisTipoAnuncio @idTipo = 2;

  select Imovel.ID,Imovel.Valor_imovel,tipoAnuncio.Nome_Tipo_Anuncio FROM Imovel join TipoAnuncio 
on Imovel.fk_TipoAnuncio_ID = TipoAnuncio.ID; 

select *  from TipoImovel;

select * from  Imovel join TipoImovel on Imovel.fk_TipoImovel_ID = TipoImovel.id;

GO

create procedure Aumento 
@fatorAumento decimal
as
begin
  update Imovelset
  set Valor_imovel = Valor_imovel * @FatorAumento;
  end;

  go

  exec Aumento @FatorAumento = 1.5;


 go
  create view vw_Detalhesimovelbrasilia as
 select
  i.ID,
  i.valor_imovel,
  e.logradouro,
  e.numero,
  b.Nome_bairro,
  c.Nome_cidade,
  u.Nome_UF
 from Imovel i 
 join Endereco e
 on i.fk_Endereco_ID = e.ID 
 join Bairro b
 on e.fk_Bairro_ID = b.ID
 join Cidade c
 on b.fk_Cidade_ID = c.ID
 join Uf u
 on c.fk_UF_ID = u.ID;


 select * from vw_DetalhesImovelBrasilia where vw_DetalhesImovelBrasilia.Nome_cidade='Ceilandia';

   
   create view vw_quantidadeimovel as
 select c.Nome_cidade,
COUNT (c.Nome_cidade) as numerodeimoveis 
 from Imovel i 
 join Endereco e
 on i.fk_Endereco_ID = e.ID 
 join Bairro b
 on e.fk_Bairro_ID = b.ID
 join Cidade c
 on b.fk_Cidade_ID = c.ID
 join Uf u
 on c.fk_UF_ID = u.ID 
 group by c.Nome_cidade;
  
  select * from vw_quantidadeimovel;
  go
  create view vw_imovelportipoanuncio as
 select
 ta.Nome_Tipo_Anuncio ,
  i.ID,
  i.valor_imovel,
  e.logradouro,
  e.numero,
  b.Nome_bairro,
  c.Nome_cidade,
  u.Nome_UF
 from Imovel i 
 join Endereco e
 on i.fk_Endereco_ID = e.ID 
 join Bairro b
 on e.fk_Bairro_ID = b.ID
 join Cidade c
 on b.fk_Cidade_ID = c.ID
 join Uf u
 on c.fk_UF_ID = u.ID
 join TipoAnuncio ta
 on i.fk_TipoAnuncio_ID = ta.ID ;

 select * from vw_imovelportipoanuncio where vw_imovelportipoanuncio.Nome_Tipo_Anuncio='venda';
 select * from vw_imovelportipoanuncio where vw_imovelportipoanuncio.valor_imovel='valor';
 
 select * from vw_quantidadeimovel;

  go

  create view valorimovel as
 select
  vi.valor_imovel,
  i.ID,
  i.valor_imovel,
  e.logradouro,
  e.numero,
  b.Nome_bairro,
  c.Nome_cidade,
  u.Nome_UF
 from Imovel i 
 join Endereco e
 on i.fk_Endereco_ID = e.ID 
 join Bairro b
 on e.fk_Bairro_ID = b.ID
 join Cidade c
 on b.fk_Cidade_ID = c.ID
 join Uf u
 on c.fk_UF_ID = u.ID
 join TipoAnuncio ta
 on i.fk_TipoAnuncio_ID = ta.ID 
 join
 on valor_imovel = vi.ID ;
    
create database romullus;
 use romullus;

 



 go 
 CREATE PROCEDURE DeletarImoveisPorCidade
    @NomeCidade VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM Imovel
    WHERE @NomeCidade = @NomeCidade;
END;

EXEC DeletarImoveisPorCidade @NomeCidade = 'NomeDaCidade';

 select *  from Cidade;
 go

  
  
  CREATE VIEW vw_somarvalorimovelportipo AS
SELECT SUM(i.valor_Imovel) AS somaimovelvalor,
       t.nometipoimovel
FROM imovel i
JOIN tipoimovel t ON i.fk_tipoimovel_id = t.id
GROUP BY t.nometipoimovel;

  go

  select * from vw_somarvalorimovelportipo;

  go 

  SELECT 
    e.nome_estados,
    AVG(i.valor / i.area) AS media_por_metro_quadrado
FROM TipoImovel i
INNER JOIN estados e ON i.id_estado = e.id_estado
GROUP BY e.nome_estado
ORDER BY media_por_metro_quadrado ASC;


go


 create view vw_mediasporcidade as
 with cidadescommedia as (
 select 
 cidade.nome_cidade,
 avg(imovel.valor_imovel/imovel.area_util) as mediapormetroquadrado,
 row_number ()over(order by avg(imovel.valor_imovel/imovel.area_util)desc) as ranking 
 go
  
with valormediametroquadrado as( select UF.Nome_UF,avg(imovel.Valor_imovel/Imovel.Area_util) as mediametroquadrado 
from Imovel 
inner join Endereco
on imovel.fk_Endereco_ID = Endereco.ID
inner join Bairro-- sempre sera o nome da TABELA que voce vai juntar as informações
on Endereco.fk_Bairro_ID=Bairro.ID -- aqui sempre sera a clausula de compararção, COLUNAS FK E PK = chave estrangeira de uma de uma tabela
	-- comparada com a chave primaria da tabela de origem
inner join Cidade
on Bairro.fk_Cidade_ID=Cidade.ID
inner join UF 
on Cidade.fk_UF_ID=UF.ID
group by UF.Nome_UF)
select valormediametroquadrado.Nome_UF,
format(ROUND(valormediametroquadrado.mediametroquadrado,2),'C','pt-br') as valormediametroquadrado
from valormediametroquadrado;










 






 


   



 
 

