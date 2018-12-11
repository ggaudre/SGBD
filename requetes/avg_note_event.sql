--moyenne des notes données par les participants à un évènement
SELECT TITRE_EVENT from EVENEMENTS;
ACCEPT event PROMPT "Quel est le nom de l'événement que vous voulez sélectionner ?"

SELECT AVG(NOTE)
FROM PARTICIPER
WHERE ID_EVENT = (SELECT ID_EVENT FROM EVENEMENTS WHERE TITRE_EVENT = &event);
