SELECT TITRE_NEWS from NEWS;
prompt "De quelle news voulez vous le nombre de commentaire ?"
accept s
SELECT COUNT(*) as Nombre_de_commentaires
FROM COMMENTER join NEWS on COMMENTER.ID_NEWS = NEWS.ID_NEWS
WHERE TITRE_NEWS = &s;
