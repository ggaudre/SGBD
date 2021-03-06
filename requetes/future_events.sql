SELECT TITRE_EVENT, LIEU, DATE_DEBUT, NOM_ASSO, LOGIN_ADHERENT
FROM EVENEMENTS JOIN ORGANISER on EVENEMENTS.ID_EVENT = ORGANISER.ID_EVENT
WHERE DATE_DEBUT >= (SELECT SYSDATE + 206 FROM DUAL)
ORDER BY DATE_DEBUT ASC;
