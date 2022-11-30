use db_video_locadora;

show tables;

insert into tbl_filme_genero(id_filme, id_genero)
			values (1, 9),
            (1, 2),
            (2, 3),
            (2, 4),
            (2, 5),
            (3, 1),
            (3, 2),
            (3, 10),
            (4, 9),
            (4, 8),
            (5, 6),
            (5, 3),
            (5, 8),
            (6, 6),
            (6, 7);

select * from tbl_filme;
select * from tbl_genero;
select * from tbl_filme_genero;

#Relacionament pelo Where
select tbl_filme.nome as nomeFilme, tbl_filme.sinopse, tbl_filme.data_lancamento,
		tbl_genero.nome as nomeGenero
        
from tbl_filme, tbl_genero, tbl_filme_genero
where tbl_filme.id = tbl_filme_genero.id_filme and 
	tbl_genero.id = tbl_filme_genero.id_genero;

#Relacionamento pelo From
select tbl_filme.nome as nomeFilme, tbl_filme.sinopse, tbl_filme.data_lancamento,
		tbl_genero.nome as nomeGenero,
        tbl_classificacao.nome as nomeClassificacao,  tbl_classificacao.classificacao
from tbl_filme
	inner join tbl_filme_genero
		on tbl_filme.id = tbl_filme_genero.id_filme
	inner join tbl_genero
		on tbl_genero.id = tbl_filme_genero.id_genero
	inner join tbl_classificacao
		on tbl_classificacao.id = tbl_filme.id_classificacao;

select * from tbl_nacionalidade;


#Exemplo 02 de INNER JOIN

select tbl_filme.nome as nomeFilme, tbl_filme.sinopse,
tbl_genero.nome as nomeGenero,
tbl_classificacao.nome as nomeClassificacao, tbl_classificacao.classificacao, tbl_classificacao.caracteristicas,
tbl_ator_diretor.nome as nomeAtor, tbl_ator_diretor.nome_artistico,
tbl_nacionalidade.nome as nomeNacionalidadeAtor

from tbl_filme
		inner join tbl_filme_genero
			on tbl_filme.id = tbl_filme_genero.id_filme ## pk || fk
		inner join tbl_genero
			on tbl_genero.id = tbl_filme_genero.id_genero
		inner join tbl_classificacao
			on tbl_classificacao.id = tbl_filme.id_classificacao
		inner join tbl_filme_ator
			on tbl_Filme.id = tbl_filme_ator.id_filme
		inner join tbl_ator 
			on tbl_ator.id = tbl_filme_ator.id_ator
		inner join tbl_ator_diretor
			on tbl_ator_diretor.id = tbl_ator.id_ator_diretor
		inner join tbl_ator_diretor_nacionalidade
			on tbl_ator_diretor.id = tbl_ator_diretor_nacionalidade.id_ator_diretor
		inner join tbl_nacionalidade
			on tbl_nacionalidade.id = tbl_ator_diretor_nacionalidade.id_nacionalidade;

use db_video_locadora;

## Exemplo de LEFT JOIN 
## OBS: 

select tbl_filme.nome as nomeFilme, tbl_filme.sinopse,
tbl_genero.nome as nomeGenero,
tbl_classificacao.nome as nomeClassificacao, tbl_classificacao.classificacao, tbl_classificacao.caracteristicas,
tbl_ator_diretor.nome as nomeAtor, tbl_ator_diretor.nome_artistico,
tbl_nacionalidade.nome as nomeNacionalidadeAtor

from tbl_filme
		inner join tbl_filme_genero
			on tbl_filme.id = tbl_filme_genero.id_filme ## pk || fk
		inner join tbl_genero
			on tbl_genero.id = tbl_filme_genero.id_genero
		inner join tbl_classificacao
			on tbl_classificacao.id = tbl_filme.id_classificacao
		inner join tbl_filme_ator
			on tbl_Filme.id = tbl_filme_ator.id_filme
		inner join tbl_ator 
			on tbl_ator.id = tbl_filme_ator.id_ator
		inner join tbl_ator_diretor
			on tbl_ator_diretor.id = tbl_ator.id_ator_diretor
		left join tbl_ator_diretor_nacionalidade
			on tbl_ator_diretor.id = tbl_ator_diretor_nacionalidade.id_ator_diretor
		left join tbl_nacionalidade
			on tbl_nacionalidade.id = tbl_ator_diretor_nacionalidade.id_nacionalidade;



## Exemplo simples inner join
select tbl_ator_diretor.nome as nomeAtor, tbl_ator_diretor.nome_artistico,
tbl_nacionalidade.nome as nomeNacionalidade

from tbl_ator_diretor

inner join tbl_ator_diretor_nacionalidade
on tbl_ator_diretor.id = tbl_ator_diretor_nacionalidade.id_ator_diretor
inner  join  tbl_nacionalidade
on tbl_nacionalidade.id = tbl_ator_diretor_nacionalidade.id_nacionalidade;

########
select tbl_ator_diretor.nome as nomeAtor, tbl_ator_diretor.nome_artistico,
tbl_nacionalidade.nome as nomeNacionalidade

from tbl_ator_diretor

left join tbl_ator_diretor_nacionalidade
on tbl_ator_diretor.id = tbl_ator_diretor_nacionalidade.id_ator_diretor
left  join  tbl_nacionalidade
on tbl_nacionalidade.id = tbl_ator_diretor_nacionalidade.id_nacionalidade


union

select tbl_ator_diretor.nome as nomeAtor, tbl_ator_diretor.nome_artistico,
tbl_nacionalidade.nome as nomeNacionalidade

from tbl_ator_diretor

right join tbl_ator_diretor_nacionalidade
on tbl_ator_diretor.id = tbl_ator_diretor_nacionalidade.id_ator_diretor
right join  tbl_nacionalidade
on tbl_nacionalidade.id = tbl_ator_diretor_nacionalidade.id_nacionalidade;
