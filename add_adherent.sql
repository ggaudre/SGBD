-- Ajout d'un adhérent
PROMPT "Ajout d'un adhérent"
insert into PERSONNES values (ID_PERS_SEQ.nextval, 'DUBOIS', 'JEAN');
insert into ADHERENTS values ('jdubois', 'jdubois@enseirb-matmeca.fr', 'ELECTRONIQUE', 2021, 'mdp_jdubois', (select id_pers from personnes where NOM_PERS = 'DUBOIS'));
