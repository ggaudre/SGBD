--Informations sur les associations, les adhérents, les évènements.





--La liste des adhérents à une association à une date donnée
SELECT LOGIN_ADHERENT
FROM COTISER
WHERE NOM_ASSO= "BDE" AND DATE_INSCRIPTION = 12-NOV-17 ;
-- et celle des adhérents qui n'ont pas encore cotisé.
SELECT LOGIN_ADHERENT
FROM COTISER
WHERE NOM_ASSO= "BDE" AND DATE_INSCRIPTION = NULL ;

-- La liste des personnes organisant un évènement
SELECT LOGIN_ORGANISATEUR
FROM EVENEMENT
WHERE ID_EVENT = 1;
-- et celles des personnes participant à cet évènement.
SELECT ID_PERS
FROM PARTICIPER
WHERE ID_EVENT = 1;

--   Pour une news, on veut savoir le nombre de commentaires qui ont été postés.
SELECT COUNT(*)
FROM COMMENTER
WHERE ID_NEWS = 1;
