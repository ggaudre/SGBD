select TITRE_EVENT from EVENEMENTS;
prompt "De quel evenement voulez vous la liste des participants ?"
accept s
SELECT NOM_PERS as nom, PRENOM_PERS as prenom
FROM PARTICIPER JOIN EVENEMENTS on PARTICIPER.ID_EVENT = EVENEMENTS.ID_EVENT JOIN PERSONNES on PERSONNES.ID_PERS = PARTICIPER.ID_PERS
WHERE TITRE_EVENT = &s;
