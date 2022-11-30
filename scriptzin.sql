#Especifica o database utilizado
use db_video_locadora;

show tables;

#Tabela de Sexo
insert into tbl_sexo (siglas, descricao)
			values ('F', 'Feminino');
            
insert into tbl_sexo (siglas, descricao)
			values ('M', 'Masculino');
            
select * from tbl_sexo;

#Tabela de Classificacao

alter table tbl_classificacao modify column caracteristicas varchar(200) not null; #modifica a estrutra

insert into tbl_classificacao (nome, classificacao, caracteristicas)
			values ('10', 'Exibição em qualquer horário', 'Conteúdo violento ou linquagem inapropriada para criancas, ainda que em menor intensidade.'), 
            ('12', 'Não recomendado para menores de 12 anos', 'As cenas podem conter agressão física, consumo de drogas e insinuação sexual.'),
            ('14', 'Não recomendado para menores de 14 anos', 'Conteúdos mais acentuados com violência e ou linguagem sexual.'),
            ('16', 'Não recomendado para menores de 16 anos', 'Conteúdos de sexo ou violência mais intensos, com cenas de tortura, suicídio, estupro ou nudez total.'),
            ('18', 'Não recomendado para menores de 18 anos', 'Conteúdos violentos e sexuais extremos. Cenas de sexo, incesto ou atos repetidos de tortura, multilação ou abuso sexual.');

select * from tbl_classificacao;
select * from tbl_filme;

#Poderoso Chefao
insert into tbl_filme (nome, nome_original, duracao, sinopse, data_lancamento, data_relancamento, foto_capa, id_classificacao)
			values ('O Poderoso Chefão', 'The Godfather', '02:55:00', 'Don Vito Corleone (Marlon Brando) é o chefe de uma "família" de Nova York que está feliz,
            pois Connie (Talia Shire), sua filha, se casou com Carlo (Gianni Russo). Porém, durante a festa, Bonasera (Salvatore Corsitto) é visto no escritório de Don Corleone pedindo "justiça", 
            vingança na verdade contra membros de uma quadrilha, que espancaram barbaramente sua filha por ela ter se recusado a fazer sexo para preservar a honra.
            Vito discute, mas os argumentos de Bonasera o sensibilizam e ele promete que os homens, que maltrataram a filha de Bonasera não serão mortos, pois ela também não foi,
            mas serão severamente castigados. Vito porém deixa claro que ele pode chamar Bonasera algum dia para devolver o "favor". Do lado de fora, no meio da festa, está o terceiro filho de Vito,
            Michael (Al Pacino), um capitão da marinha muito decorado que há pouco voltou da 2ª Guerra Mundial. Universitário educado, sensível e perceptivo,
            ele quase não é notado pela maioria dos presentes, com exceção de uma namorada da faculdade, Kay Adams (Diane Keaton), que não tem descendência italiana mas que ele ama.
            Em contrapartida há alguém que é bem notado, Johnny Fontane (Al Martino), um cantor de baladas românticas que provoca gritos entre as jovens que beiram a histeria.
            Don Corleone já o tinha ajudado, quando Johnny ainda estava em começo de carreira e estava preso por um contrato com o líder de uma grande banda, mas a carreira de Johnny deslanchou
            e ele queria fazer uma carreira solo. Por ser seu padrinho Vito foi procurar o líder da banda e ofereceu 10 mil dólares para deixar Johnny sair, mas teve o pedido recusado.
            Assim, no dia seguinte Vito voltou acompanhado por Luca Brasi (Lenny Montana), um capanga, e após uma hora ele assinou a liberação por apenas mil dólares,
            mas havia um detalhe: nas "negociações" Luca colocou uma arma na cabeça do líder da banda. Agora, no meio da alegria da festa, Johnny quer falar algo sério com Vito,
            pois precisa conseguir o principal papel em um filme para levantar sua carreira, mas o chefe do estúdio, Jack Woltz (John Marley), nem pensa em contratá-lo.
            Nervoso, Johnny começa a chorar e Vito, irritado, o esbofeteia, mas promete que ele conseguirá o almejado papel.
            Enquanto a festa continua acontecendo, Don Corleone comunica a Tom Hagen (Robert Duvall), seu filho adotivo que atua como conselheiro,
            que Carlo terá um emprego mas nada muito importante, e que os "negócios" não devem ser discutidos na sua frente. Os verdadeiros problemas começam para Vito quando Sollozzo (Al Lettieri),
            um gângster que tem apoio de uma família rival, encabeçada por Phillip Tattaglia (Victor Rendina) e seu filho Bruno (Tony Giorgio).
            Sollozzo, em uma reunião com Vito, Sonny e outros, conta para a família que ele pretende estabelecer um grande esquema de vendas de narcóticos em Nova York,
            mas exige permissão e proteção política de Vito para agir. Don Corleone odeia esta idéia, pois está satisfeito em operar com jogo, mulheres e proteção,
            mas isto será apenas a ponta do iceberg de uma mortal luta entre as "famílias".', '1972-03-24', '2022-02-24', 'https://br.web.img3.acsta.net/medias/nmedia/18/90/93/20/20120876.jpg', 4);

#O rei LEao
insert into tbl_filme (nome, nome_original, duracao, sinopse, data_lancamento, data_relancamento, foto_capa, id_classificacao)
			values ('O Rei Leão', 'The Lion King', '01:29:00', 'Clássico da Disney, a animação acompanha Mufasa (voz de James Earl Jones), o Rei Leão, e a rainha Sarabi (voz de Madge Sinclair),
            apresentando ao reino o herdeiro do trono, Simba (voz de Matthew Broderick).
            O recém-nascido recebe a bênção do sábio babuíno Rafiki (voz de Robert Guillaume),
            mas ao crescer é envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons),
            o invejoso e maquiavélico irmão de Mufasa, que planeja livrar-se do sobrinho e herdar o trono.', '1994-07-08', '2011-08-26', 'https://cdnv2.moovin.com.br/editorarideel/imagens/produtos/original/c21c5b2a09.jpg', 1);
            
insert into tbl_filme (nome, nome_original, duracao, sinopse, data_lancamento, data_relancamento, foto_capa, id_classificacao)
			values ('Forest Gump - O Contador de Histórias', 'Forest Gump', '02:20:00', 'Quarenta anos da história dos Estados Unidos, vistos pelos olhos de Forrest Gump (Tom Hanks),
            um rapaz com QI abaixo da média e boas intenções. Por obra do acaso, ele consegue participar de momentos cruciais,
            como a Guerra do Vietnã e Watergate, mas continua pensando no seu amor de infância, Jenny Curran.', '1994-12-07', null, 'https://upload.wikimedia.org/wikipedia/pt/c/c0/ForrestGumpPoster.jpg', 4);
            
insert into tbl_filme (nome, nome_original, duracao, sinopse, data_lancamento, data_relancamento, foto_capa, id_classificacao)
			values ('À Espera de um Milagre', 'The Green Mile', '03:09:00', '1935, no corredor da morte de uma prisão sulista. Paul Edgecomb (Tom Hanks)
            é o chefe de guarda da prisão, que temJohn Coffey (Michael Clarke Duncan) como um de seus prisioneiros.
            Aos poucos, desenvolve-se entre eles uma relação incomum,baseada na descoberta de que o prisioneiro possui um dom mágico que é,
            ao mesmo tempo, misterioso e milagroso.', '2000-03-10', null, 'https://bankshop.com.br/wp-content/uploads/2021/10/2020-1344-a-espera-milagre-poster.jpg', 4);

insert into tbl_filme (nome, nome_original, duracao, sinopse, data_lancamento, data_relancamento, foto_capa, id_classificacao)
			values ('Vingadores: Ultimato', 'Avengers: Endgame', '03:01:00', '1935, no corredor da morte de uma prisão sulista. Paul Edgecomb (Tom Hanks)
            é o chefe de guarda da prisão, que temJohn Coffey (Michael Clarke Duncan) como um de seus prisioneiros.
            Aos poucos, desenvolve-se entre eles uma relação incomum,baseada na descoberta de que o prisioneiro possui um dom mágico que é,
            ao mesmo tempo, misterioso e milagroso.', '2000-03-10', null, 'https://img.elo7.com.br/product/zoom/26FCC69/poster-filme-vingadores-ultimato-avenger-endgame-cinema.jpg', 3);

insert into tbl_filme (nome, nome_original, duracao, sinopse, data_lancamento, data_relancamento, foto_capa, id_classificacao)
			values ('Batman - O Cavaleiro das Trevas', 'The Dark Knight', '02:32:00', 'Após dois anos desde o surgimento do Batman (Christian Bale),
            os criminosos de Gotham City têm muito o que temer. Com a ajuda do tenente James Gordon (Gary Oldman)
            e do promotor público Harvey Dent (Aaron Eckhart), Batman luta contra o crime organizado.
            Acuados com o combate, os chefes do crime aceitam a proposta feita pelo Coringa (Heath Ledger) e o contratam para combater o Homem-Morcego.', '2008-07-18', null,
            'https://play-lh.googleusercontent.com/b0bqoD27ib25NwPutF8Kf740iiFQ53CKUz27VBQkCQtvSfhdWQtb8vwFxxn-SzI-5ZATXXkDwf2qPODkNQ=w480-h960-rw', 3);


insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Francis Ford Coppola', 'Francis F. Coppola', '1939-04-07', null, 'https://www.mapadoceu.com.br/photo/astro/francis-ford-coppola.jpg?v=1523059200', 2);

insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Marlon Brando', null, '1924-04-03', '2004-07-01', 'https://f001.backblazeb2.com/file/papocine/2013/04/20180403-marlon-blog5.jpeg', 2);

insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Alfredo James Pacino', 'Al Pacino', '1940-04-25', null, 'https://br.web.img3.acsta.net/c_310_420/pictures/19/03/19/18/33/1337912.jpg', 2);
            
insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('James Edmund Caan', 'James Caan', '1940-03-26', '2022-07-06', 'https://br.web.img3.acsta.net/c_310_420/pictures/15/06/09/21/29/576102.jpg', 2);

insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Roger Allers', null, '1949-06-29', null, 'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/91/54/06/20150846.jpg', 2);

insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Robert Ralph Minkoff', 'Rob Minkoff', '1962-08-11', null, 'https://br.web.img2.acsta.net/c_310_420/medias/nmedia/18/91/54/07/20150847.jpg', 2);

insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Garcia Júnior', null, '1967-03-02', null, 'https://br.web.img2.acsta.net/c_310_420/pictures/14/01/16/13/52/556410.jpg', 2);

insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Matthew Broderick', null, '1962-03-21', null, 'https://br.web.img2.acsta.net/c_310_420/pictures/19/07/02/22/47/0236519.jpg', 2);

insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Todd Jones', 'James Earl Jones', '1931-01-17', null, 'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/55/34/20040970.jpg', 2);

insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Robert Lee Zemeckis', 'Robert Zemeckis', '1952-05-14', null, 'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/87/57/81/20030814.jpg', 2);

insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Thomas Jeffrey Hanks', 'Tom Hanks', '1956-07-09', null, 'https://br.web.img3.acsta.net/c_310_420/pictures/18/08/08/18/47/1167635.jpg', 2);
            
insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Gary Alan Sinise', 'Gary Sinise', '1955-03-17', null, 'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/92/45/36/20200745.jpg', 2);
            
insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Robin Virginia Gayle Wright', 'Robin Wright', '1966-04-08', null, 'https://br.web.img3.acsta.net/c_310_420/pictures/19/11/05/01/50/2018682.jpg', 1);

insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Ferenc Árpád Darabont', 'Frank Darabont', '1959-01-28', null, 'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/90/95/95/20122149.jpg', 2);

insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Michael Clarke Duncan', 'Michael Duncan', '1957-12-10', '2012-09-03', 'https://br.web.img3.acsta.net/c_310_420/pictures/14/09/06/19/41/147683.jpg', 2);
                       
insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('David Bowditch Morse', 'David Morse', '1953-10-11', null, 'https://br.web.img2.acsta.net/c_310_420/pictures/15/02/25/18/50/212119.jpg', 2);

insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Joseph Vincent Russo', 'Joe Russo', '1971-07-08', null, 'https://br.web.img2.acsta.net/c_310_420/pictures/15/11/24/17/01/231901.jpg', 2);

insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Anthony J. Russo', 'Anthony Russo', '1970-02-03', null, 'https://br.web.img2.acsta.net/c_310_420/pictures/15/11/24/16/59/250993.jpg', 2);

insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Robert John Downey Jr', 'Robert Downey Jr', '1965-04-04', null, 'https://br.web.img3.acsta.net/c_310_420/pictures/18/06/29/00/35/0101925.jpg', 2);

insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Christopher Robert Evans', 'Chris Evans', '1981-06-13', null, 'https://br.web.img3.acsta.net/c_310_420/pictures/19/04/22/19/59/2129500.jpg', 2);

insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Mark Alan Ruffalo', 'Mark Ruffalo', '1967-11-22', null, 'https://br.web.img3.acsta.net/c_310_420/pictures/19/04/22/20/02/3083743.jpg', 2);
            
insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Christopher Edward Nolan', 'Christopher Nolan', '1970-07-30', null, 'https://br.web.img3.acsta.net/c_310_420/pictures/15/02/26/15/33/118611.jpg', 2);

insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Christian Charles Philip Bale', 'Christian Bale', '1974-01-30', null, 'https://br.web.img3.acsta.net/c_310_420/pictures/15/02/24/18/43/126776.jpg', 2);
            
insert into tbl_ator_diretor (nome, nome_artistico, data_nascimento, data_falecimento, foto, id_sexo)
			values ('Heathcliff Andrew Ledger', 'Heath Ledger', '1979-04-04', '2008-01-22', 'https://br.web.img2.acsta.net/c_310_420/pictures/18/08/16/19/43/2593099.jpg', 2);

###################################################################################################################################################################################################

insert into tbl_diretor (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('72', 'Em 1969, fundou juntamente com George Lucas a produtora American Zoetrope, em São Francisco,
            tendo como primeiro projeto o filme THX 1138 (1970);- É tio do ator Nicolas Cage;-
            Pai da tambem diretora Sofia Coppola;- Foi assistente de direção de Roger Corman;-
            Graduado na Universidade da Califórnia (UCLA), a mesma dos diretores, George Lucas e Steven Spielberg.', '1966', 1);

insert into tbl_diretor (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('9', 'Roger Allers é um diretor, roteirista, artista de storyboard, cartunista e dramaturgo americano.
            Ele é mais conhecido por co-dirigir o filme de animação tradicional de maior bilheteria na história,
            O Rei Leão da Walt Disney Animation Studios, e por escrever a adaptação da Broadway, O Rei Leão', '1996', 5);

insert into tbl_diretor (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('14', 'Robert R. "Rob" Minkoff é um cineasta americano.
            Ele é conhecido por dirigir o o famoso filme da Disney, O Rei Leão.', '1988', 6);

insert into tbl_diretor (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('49', 'Especialista em efeitos especiais, Robert Zemeckis é um dos partidários dos filmes do também diretor Steven Spielberg,
            que já produziu vários de seus filmes;', '1981', 8);

insert into tbl_diretor (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('23', 'É o autor dos roteiros de "A Hora do Pesadelo 3", "A Mosca 2" e "Frankenstein de Mary Shelley".
            - Trabalhou como roteirista na série de TV norte-americana "O Jovem Indiana Jones".', '1990', 12);
            
insert into tbl_diretor (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('26', 'Joseph Vincent Russo é um cineasta e produtor americano que trabalha ao lado de seu irmão Anthony Russo.
            Eles dirigiram You, Me and Dupree, Cherry e os filmes da Marvel Capitão América: O Soldado Invernal, Capitão América: Guerra Civil, Vingadores: Guerra Infinita e Vingadores: Ultimato.
            Ultimato é um dos filmes de maior bilheteria de todos os tempos.', '2004', 15);

insert into tbl_diretor (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('22', 'Anthony Russo nasceu na cidade de Cleveland, nos EUA. Começou sua carreira como diretor de videoclipes, sempre ao lado do irmão Joe Russo.
            Ambos se graduaram em cinema na Universidade de Iowa. Ao lado de Joe, estreou como realizador de longas em L.A.X.', '2001', 16);
            

insert into tbl_diretor (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('18', 'Com apenas sete anos de idade, Christopher Nolan já se arriscava por trás das câmeras. Utilizando-se da câmera Super 8 do pai, ele realizou vários pequenos filmes estrelados por seus brinquedos. A vontade de dirigir não passou e ele acabou se tornando um importante realizador.Com apenas sete anos de idade, Christopher Nolan já se arriscava por trás das câmeras. Utilizando-se da câmera Super 8 do pai,
            ele realizou vários pequenos filmes estrelados por seus brinquedos. A vontade de dirigir não passou e ele acabou se tornando um importante realizador.', '2000', 20);
            
insert into tbl_ator (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('41', 'Trabalhou como ascensorista de elevador em uma loja por 4 dias, antes de se tornar famoso.
            - Possui uma ilha particular no oceano Pacífico, na Polinésia, desde 1966.
            - O Oscar que ganhou por "Sindicato dos Ladrões" foi roubado de sua casa, com o ator tendo solicitado à Academia de Artes e Ciências Cinematográficas a reposição da estatueta, em 1970.
            - Recusou o Oscar recebido por "O Poderoso Chefão", em protesto pelo modo como os Estados Unidos e, especialmente, Hollywood vinham discriminando os índios nativos do país.
            Brando não compareceu à cerimônia de entrega do Oscar e enviou em seu lugar a atriz Sacheen Littlefeather,
            que subiu ao palco para receber a estatueta do ator como se fosse uma índia verdadeira, divulgando seu protesto.', '1968', 2);

insert into tbl_ator (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('60', 'É um grande fã de ópera;- É um dos poucos astros de Hollywood que nunca casou;- Foi preso em janeiro de 1961, acusado de carregar consigo uma arma escondida;
            - Recusou o personagem Han Solo, da trilogia original de "Star Wars";
            - Foi o primeiro na história do Oscar a ser indicado no mesmo ano nas categorias de melhor ator e melhor ator coadjuvante.', '1971', 3);

insert into tbl_ator (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('6', 'Manoel Garcia Júnior é um ator, dublador, radialista, tradutor e diretor de dublagem brasileiro.
            Manoel é filho dos também dubladores Garcia Neto e Dolores Machado.', '1988', 24);
            
insert into tbl_ator (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('47', 'Matthew Broderick é um ator norte-americano,
            célebre pela sua atuação como Ferris Bueller em Ferris Buellers Day Off de 1986, e por outros papéis,
            como David Lightman em WarGames, Jimmy Garrett em Projeto Secreto: Macacos, Nick Tatopoulos, em Godzilla e o personagem título em Inspector Gadget.', '1986', 7);
            
insert into tbl_ator (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('66', 'Do signo de Capricórnio;- Possui descendência africana, indígena e irlandesa;- Foi criado pelos avós maternos.
            Seus pais, Ruth Connolly and Robert Earl Jones, se separaram pouco antes de seu nascimento;- Começou a ter aulas de atuação para curar sua gagueira;
            - Também para melhorar sua dicção, começou a escrever poesias e contava com o apoio dos professores, que permitiam que ele as lesse em sala de aula;
            - É um veterano do exército dos Estados Unidos;- É membro da NRA (Associação Nacional de Rifles da América);- Foi casado com a atriz Julienne Marie, de quem se separou em 1972.
            Se casou novamente dez anos depois, em 82, com Cecilia Hart, com quem teve um filho;- Foi o primeiro afro-descendente a interpretar o presidente dos EUA.
            Foi no telefilme The Man, de 1972.', '1966', 25);

            
insert into tbl_ator (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('97', 'Tom Hanks iniciou a carreira no cinema aos 24 anos, com um papel no filme de baixo orçamento Trilha de Corpos.
            Logo migrou para a TV, onde estrelou por dois anos a série Bosom Buddies. Nela passou a trabalhar com comédia,
            algo com o qual não estava habituado, rendendo convites para pequenas participações nas séries Táxi, Caras & Caretas e Happy Days.Em 1984,
            veio seu primeiro sucesso no cinema: a comédia Splash - Uma Sereia em Minha Vida, na qual era dirigido por Ron Howard e contracenava com Daryl Hannah.
            Em seguida vieram várias comédias, entre elas A Última Festa de Solteiro (1984), Um Dia a Casa Cai (1986) e Dragnet - Desafiando o Perigo (1987),
            tornando-o conhecido do grande público.Com Quero Ser Grande (1988) Hanks obteve sua primeira indicação ao Oscar de melhor ator.', '1982', 9);

insert into tbl_ator (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('35', 'Gary Alan Sinise é um ator norte-americano, diretor de cinema e músico.
            Durante sua carreira, ganhou vários prêmios, incluindo um Emmy e um Globo de Ouro, além de ser nomeado para um Oscar.
            Também é conhecido por estrelar como o detetive Mac Taylor na série CSI: New York.', '1981', 10);

insert into tbl_ator (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('45', 'Robin Wright nasceu em Dallas, Texas, filha de Gayle Gaston, uma vendedora de cosméticos, e Freddie Wright, funcionário de uma empresa farmacêutica.
            A atriz ficou famosa por seus papeis em House of Cards, Mulher-Maravilha, Corpo Fechado e Forrest Gump - O Contador de Histórias.Wright foi criada em San Diego, Califórnia.
            Quando jovem, frequentou a La Jolla High School, em La Jolla, e a Taft High School em Woodland Hills,
            em Los Angeles.A atriz começou sua carreira como modelo quando tinha 14 anos. ', '1986', 11);
            
insert into tbl_ator (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('44', 'Michael Clarke Duncan é conhecido pela atuação em À Espera de um Milagre, que lhe rendeu indicações ao Oscar e ao Globo de Ouro de Melhor Ator Coadjuvante.
            Fez sua estreia nos cinemas em 1995, com um papel não creditado em Sexta-Feira em Apuros. O primeiro trabalho de destaque viria três anos depois com Armageddon.', '2004', 13);

insert into tbl_ator (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('50', 'David Morse é um ator norte-americano.', '1985', 14);
            
insert into tbl_ator (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('69', 'Do céu ao inferno e ao céu novamente. Se alguém pensou no mito do pássaro fênix que renasce das cinzas,
            até que a comparação poderia se encaixar para definir este brilhante ator que já deu vida para personagens tão distantes em tempo e estilo,
            como Charles Chaplin (Chaplin - 1992) e Tony Stark (Homem de Ferro - 2008).', '1982', 17);

insert into tbl_ator (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('39', 'Depois de uma infância e estudos ​​em Boston, Chris Evans decidiu ir para Nova York para tentar a sorte na comédia.
            Ele rapidamente consegue entrar na profissão, principalmente participando em séries de televisão (Boston Public).
            Sua carreira no cinema começou em 2001, em uma comédia para adolescentes (Não é Mais um Besteirol Americano).
            as sem ficar preso a apenas um gênero de filme, o ator vai para outras produções:
            trapaceia nas provas com Scarlett Johansson na comédia policial Nota Máxima (2004),
            interpreta o papel de Kim Basinger no thriller Celular - Um Grito de Socorro (2004) e seduz Jessica Biel em London (2005).', '2002', 18);

insert into tbl_ator (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('49', 'Apesar de ter um pequeno papel em Ride With The Devil (1999),
            a primeira participação de destaque de Mark Ruffalo no cinema vem com o premiado drama Conte Comigo (2000).
            Ele conquista papéis importantes no thriller erótico Em Carne Viva (2003) e no drama Brilho Eterno de uma Mente Sem Lembranças (2004),
            antes de se lançar em comédias românticas como De Repente 30 (2004) e Dizem Por Aí... (2005). Ele retoma os dramas e suspenses com Zodíaco (2007)
            e Ensaio Sobre a Cegueira (2008). Em 2010, Martin Scorsese convida-o a atuar em Ilha do Medo, ao lado de Leonardo DiCaprio.', '1996', 19);
            
insert into tbl_ator (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('48', 'Caçula de três irmãs mais velhas, filho de um piloto de aviação comercial e de uma dançarina de circo,
            Bale começou a atuar por influência de uma delas. Pouca gente recorda que este ator inglês é o menino Jim, que tocou corações em Império do Sol (1987),
            de Steven Spielberg. Para ganhar o papel, derrotou cerca de quatro mil candidatos e sua atuação ainda rendeu prêmios.', '1988', 21);

insert into tbl_ator (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('17', 'Extremamente tímido, este australiano descendente de irlandeses e escoceses optou por atuar desde cedo.
            Mesmo com a rápida fama conquistada, em parte por sua beleza,
            ele procurou interpretar papéis que não explorassem este aspecto e conseguiu atuações marcantes em sua curta carreira.', '2000', 23);
	
insert into tbl_ator (quantidade_filmes, biografia, ano_inicio_carreira, id_ator_diretor)
			values ('23', 'Comprou uma moto após aprender a dirigi-la nas filmagens de "Erin Brockovich, uma Mulher de Talento" (2000);
            - Tirou férias de três anos após completar o 2º grau para esquiar na França e surfar no Havaí.', '1999', 23);
            
insert into tbl_nacionalidade (nome)
			values ('Americano'),s
            ('Brasileiro'),
            ('Australiano'),
            ('Francês'),
            ('Britânico');
            
            
insert into tbl_genero (nome)
			values ('Comédia'),
            ('Drama'),
            ('Aventura'),
            ('Animação'),
            ('Musical'),
            ('Ação'),
            ('Suspense'),
            ('Fantasia'),
            ('Policial'),
            ('Romance');

insert into tbl_filme (nome, nome_original, duracao, sinopse, data_lancamento, data_relancamento, foto_capa, id_classificacao)
			values ('A lista de Schindler', 'Schindlers List', '03:15:00', 'A inusitada história de Oskar Schindler (Liam Neeson), um sujeito oportunista, sedutor, "armador", simpático,
            comerciante no mercado negro, mas, acima de tudo, um homem que se relacionava muito bem com o regime nazista, tanto que era membro do próprio Partido Nazista
            (o que não o impediu de ser preso algumas vezes, mas sempre o libertavam rapidamente, em razão dos seus contatos).
            No entanto, apesar dos seus defeitos, ele amava o ser humano e assim fez o impossível, a ponto de perder a sua fortuna mas conseguir salvar mais de mil judeus
            dos campos de concentração.', '1993-12-31', '2019-05-1', 'https://br.web.img3.acsta.net/c_310_420/pictures/19/04/10/19/44/2904073.jpg', 3);
		
            
desc tbl_diretor;

select * from tbl_nacionalidade;

#Update 
update tbl_filme set data_lancamento = '2019-04-25' where id = 5;

delete from tbl_filme where id = 8;

insert into tbl_ator_diretor_nacionalidade(id_nacionalidade, id_ator_diretor)
			values (1, 1),
            (1, 2),
            (1, 3),
            (1, 4),
            (1, 5),
            (1, 6),
            (1, 7),
            (1, 8),
            (1, 9),
            (1, 10),
            (1, 11),
            (4, 12),
            (1, 13),
            (1, 14),
            (1, 15),
            (1, 16),
            (1, 17),
            (1, 18),
            (1, 19),
            (5, 20),
            (5, 21),
            (3, 23),
            (2, 24),
            (1, 25)