-- Ajout d'un adhérent
PROMPT "Ajout d'un adhérent"

VARIABLE id_personne NUMBER(5)


insert into PERSONNES values (ID_PERS_SEQ.nextval, 'DUBOIS', 'JEAN');
exec SELECT ID_PERS into :id_personne from PERSONNES where NOM_PERS = 'DUBOIS'; -- Ici je sais qu'il n'y a qu'un seul Dubois
insert into ADHERENTS values ('jdubois', 'jdubois@enseirb-matmeca.fr', 'ELECTRONIQUE', 2021, 'mdp_jdubois', &id_personne);

-- Modification du mdp de l'adhérent
PROMPT "Modification du mdp de l'adhérent"
update ADHERENTS set MDP = 'nouveau_mdp' where LOGIN_ADHERENT = 'jdubois';

-- Suppression de l'adhérent
PROMPT "Suppression de l'adhérent"
delete from ADHERENTS where LOGIN_ADHERENT = 'jdubois';
delete from PERSONNES where ID_PERS = &id_personne;
