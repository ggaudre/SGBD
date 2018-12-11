-- Ajout d'un adhérent
PROMPT "Ajout d'un adhérent"
define id_personne = ID_PERS_SEQ.nextval
define id_perso = id_personne
insert into PERSONNES values (&id_perso, 'DUBOIS', 'JEAN');
insert into ADHERENTS values ('jdubois', 'jdubois@enseirb-matmeca.fr', 'ELECTRONIQUE', 2021, 'mdp_jdubois', &id_perso);

-- Modification du mdp de l'adhérent
PROMPT "Modification du mdp de l'adhérent"
update ADHERENTS set MDP = 'nouveau_mdp' where LOGIN_ADHERENT = 'jdubois';

-- Suppression de l'adhérent
PROMPT "Suppression de l'adhérent"
delete from ADHERENTS where LOGIN_ADHERENT = 'jdubois';
delete from PERSONNES where ID_PERS = &id_perso;
