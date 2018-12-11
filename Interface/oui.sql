prompt "oui ";
accept num number prompt "id? "
SELECT COMMENTAIRE_EVENT
FROM PARTICIPER
WHERE ID_EVENT = &num;
