#Estrtura Básica do SELECT

#Retorna todas as colunas (*) e todos os registros
select * from tbl_filme;
select tbl_filme.* from tbl_filme;

#Retorna apenas os atributos selecionados de todos os registros
select nome, duracao, data_lancamento from tbl_filme;
select tbl_filme.nome, tbl_filme.duracao, tbl_filme.data_lancamento from tbl_filme;

#Filtro pelo ID
select * from tbl_filme where id = 3;
select nome, sinopse from tbl_filme where id = ;

#Filtro por outros atributos

#Retorna apenas os filmes com a mesma escrita
select * from tbl_filme where nome = 'Batman';

#Retorna os filmes que terminam com a palavra chave (batman)
select * from tbl_filme where nome like '%Batman';

#Retorna os filmes que iniciam com a palavra chave (batman)
select * from tbl_filme where nome like 'Batman%';

#Retorna todos os filmes que tenham palavra chave (batman) em qualuqer parte da escrita.
select * from tbl_filme where nome like '%Batman%';

#Ordenacao
#Tem que ser o ultimo comando do script

select * from tbl_filme order by nome, nome_original; #Ordenacao crescente
select * from tbl_filme order by nome asc; #Ordenacao crescente
select * from tbl_filme order by nome desc; #Ordenacao descrescente


#Operdaores de Comparacao
select * from tbl_filme  where data_lancamento < '1990-12-31';
select * from tbl_filme  where data_lancamento > '1990-12-31';
select * from tbl_filme  where data_lancamento <= '1990-12-31';
select * from tbl_filme  where data_lancamento >= '1990-12-31';
select * from tbl_filme  where data_lancamento <> '2000-03-10';

#Operadores lógicos

	# E -> AND
	# OU -> OR
	# NAO -> NOT
    
#Ordem de execucao dos operadores logicos:
    # Prioridade 0 - ()
	# Prioridade 1 - NOT
	# Prioridade 2 - AND
	# Prioridade 3 - NOT

#And
select * from tbl_filme where nome like 'a%' AND data_lancamento <=  '2010-01-01';

#Or
select * from tbl_filme where nome like 'a%' OR nome like 'o%';

select nome, sinopse, duracao, data_lancamento from tbl_filme
where (((nome like 'a%' OR nome_original like 'a%') OR (nome like 'o%' OR nome_original like 'o%')) AND data_lancamento <  '2010-01-01');

use db_video_locadora;


############################## DATA E HORA ##############################

select curdate() as data_atual;
select current_date() as data_atual;

select curtime() as hora_atual;
select current_time() as hora_atual;

##Retorna a data e a hora do servidor
select current_timestamp() as data_hora_atual;

#Funcoes para retornar a hora
select time_format(current_time(), '%H') as hora;
select time_format(current_time(), '%h') as hora;
select time_format(current_time(), '%i') as minuto;
select time_format(current_time(), '%s') as segundos;
select time_format(current_time(), '%r') as hora_completa;
select time_format(current_time(), '%H:%i') as hora_completa;

#Funcao somente para retornar somente hora e minuto
select hour(current_time()) as hora;
select minute(current_time()) as minute;
select second(current_time()) as second;

#Funcao para formatar a data date_format
# %W -> Nome do dia da semana
# %w -> Retona o dia da da semana em numeros
# %a -> Nome do dia da semana abreviado
select date_format(current_date(), '%W');
select date_format(current_date(), '%w');
select date_format(current_date(), '%a');
select date_format(current_date(), '%m');
select date_format(current_date(), '%a');
select date_format(current_date(), '%b');
select date_format(current_date(), '%d');
select date_format(current_date(), '%y');
select date_format(current_date(), '%Y');


##Data no formato brasileiro
select date_format(current_date(), '%d/%m/%Y');

select day(current_date());
select month(current_date());
select year(current_date());


##Funcoes para calcular diferencia de datas e horas
select timediff('13:00:00', '10:00:00') as qtnd_horas;

select datediff('2022-11-21', '2022-11-22') as qntd_dias;

select concat('R$',((datediff('2022-11-21', '2022-11-26') *30) *-1)) as valor_pagar;

select date(current_timestamp());

###Realizando Clculos###
 
select (count(*) * 30.30) as qntd_filmes from tbl_filme;
select concat('Existe(m)  ', count(*), 'filmes cadastrados, e custou', count(*) * 30.90, 'reais para a videolocadora') as resultado from tbl_filme;

select * from tbl_filme;

alter table tbl_filme add column qntd int;

update tbl_filme set qntd = 4 where id = 6;

select sum(qntd) as soma from tbl_filme;

select round(avg(qntd), 1) as media from tbl_filme;

select min(qntd) as minimo from tbl_filme;
select max(qntd) as minimo from tbl_filme;

#Between retorna registros que estao entre 2 valores
select id, nome, sinopse, qntd, '4.60' as valor_unitario, (qntd * 4.60) as valor_total from tbl_filme where qntd not between 4 and 10;

select id, nome, sinopse, qntd, '4.60' as valor_unitario, (qntd * 4.60) as valor_total from tbl_filme where qntd not in (2,4,6,9,10);
