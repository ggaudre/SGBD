-- Ajout d'un adhérent
PROMPT "Ajout d'un adhérent"




insert into PERSONNES values (ID_PERS_SEQ.nextval, 'DUBOIS', 'JEAN');
insert into ADHERENTS values ('jdubois', 'jdubois@enseirb-matmeca.fr', 'ELECTRONIQUE', 2021, 'mdp_jdubois', (select id_pers from personnes where NOM_PERS = 'DUBOIS'));

-- Modification du mdp de l'adhérent
PROMPT "Modification du mdp de l'adhérent"
update ADHERENTS set MDP = 'nouveau_mdp' where LOGIN_ADHERENT = 'jdubois';

-- Suppression de l'adhérent
PROMPT "Suppression de l'adhérent"
delete from ADHERENTS where LOGIN_ADHERENT = 'jdubois';


-- Ajout d'un événement
PROMT "Ajout d'un événement"
insert into EVENEMENTS values (ID_EVENT_SEQ.nextval, "Event", "Ceci est l'évenement ajouté", '09-NOV-2018', 4000, 'ENSEIRB-MATMECA', 3, 5, 550, '14-NOV-2018', '14-NOV-2018', NULL);


-- Ajout d'une association
PROMT "Ajout d'une association"
