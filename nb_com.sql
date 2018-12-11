-- Moyenne du nombre de commentaires donnés par chaque adhérent
SELECT TITRE_NEWS from NEWS;
ACCEPT news PROMPT "Quel est le nom de la news que vous voulez sélectionner ?"

SELECT AVG(NB_COMMENTAIRE) AS "Moyenne"
FROM (SELECT COUNT(LOGIN_ADHERENT) AS "NB_COMMENTAIRE"
      FROM COMMENTER
      WHERE ID_NEWS = (SELECT ID_NEWS FROM NEWS WHERE TITRE_NEWS = &news)
      GROUP BY LOGIN_ADHERENT);
