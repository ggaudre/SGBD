select TITRE_EVENT from EVENEMENTS;
prompt "De quel evenement voulez vous la liste des organisateurs ?"
accept s
SELECT LOGIN_ADHERENT as Organisateurs
FROM EVENEMENTS JOIN ORGANISER ON EVENEMENTS.ID_EVENT = ORGANISER.ID_EVENT
WHERE TITRE_EVENT = &s;
