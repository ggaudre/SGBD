SELECT NOM_ASSO from ASSOCIATIONS;
prompt "De quelle association voulez vous voir le bureau ?"
accept s varchar2(100)
SELECT FONCTION, NOM_PERS as nom, PRENOM_PERS as prenom
FROM RESPONSABLES JOIN ADHERENTS ON RESPONSABLES.LOGIN_ADHERENT = ADHERENTS.LOGIN_ADHERENT JOIN PERSONNES ON PERSONNES.ID_PERS=ADHERENTS.ID_PERS
WHERE NOM_ASSO = &s;
