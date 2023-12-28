select * from gafanhotos;

/*
1. selecionar todas as gafanhotas
2. selecionar quem nasceu entre 1/jan/2000 e 31/dez/2015
3. lista com o nome de todos os homens que trabalham como programadores
4. lista com os dados de todas as mulheres que nasceram no brasil e que tem seu nome iniciado com a letra J
5. lista com o nome e nacionalidade de todos os homens que tem silva no nome, não nasceram no brasil e pesam menos de 100kg
6. qual é a maior altura entre gafanhotos homens que moram no brasil
7. qual é a media de peso dos gafanhotos cadastrados
8. qual é o menor peso entre os gafanhotos mulheres que nasceram fora do brasil e entre 01/jan/1990 e 31/dez/2000
9. quantas gafanhotos mulheres tem mais de 1.90m de altura
*/

/* 1 */
select * from gafanhotos
where  sexo = 'F';

/* 2 */
select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31';

/* 3 */
select * from gafanhotos
where sexo = 'M' and profissao = 'Programador';

/* 4 */
select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

/* 5 */
select nome, nacionalidade, peso from gafanhotos
where nome like '%_silva%' and nacionalidade != 'Brasil' and peso < '100'; 

/* 6 */
select max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil';

/* 7 */
select avg(peso) from gafanhotos;

/* 8 */
select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

/* 9 */
select count(*) from gafanhotos
where sexo = 'F' and altura > 1.9;