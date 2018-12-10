-- Ajout d'un adhérent
PROMPT "Ajout d'un adhérent"
define id_personne = ID_PERS_SEQ.nextval
insert into PERSONNES values (&id_personne, 'DUBOIS', 'JEAN');
insert into ADHERENTS values ('jdubois', 'jdubois@enseirb-matmeca.fr', 'ELECTRONIQUE', 2021, 'mdp_jdubois', &id_personne);

-- Modification du mdp de l'adhérent
PROMPT "Modification du mdp de l'adhérent"
update ADHERENTS set MDP = 'nouveau_mdp' where LOGIN_ADHERENT = 'jdubois';

-- Suppression de l'adhérent
PROMPT "Suppression de l'adhérent"
delete from ADHERENTS where LOGIN_ADHERENT = 'jdubois';
delete from PERSONNES where ID_PERS = &id_personne;
