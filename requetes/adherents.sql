SELECT NOM_ASSO from ASSOCIATIONS;
accept s PROMPT "De quelle association voulez vous voir les adhérents ?"
accept d PROMPT "A quelle date ?"
SELECT LOGIN_ADHERENT
FROM COTISER
WHERE NOM_ASSO= &s AND DATE_INSCRIPTION <= &d ;
