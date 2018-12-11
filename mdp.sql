-- Modification du mdp de l'adhérent
PROMPT "Modification du mdp de l'adhérent"
update ADHERENTS set MDP = 'nouveau_mdp' where LOGIN_ADHERENT = 'jdubois';
