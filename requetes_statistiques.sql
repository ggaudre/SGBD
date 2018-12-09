--moyenne des commentaires donnés par chaque adhérent pour une news
SELECT AVG(NB_COMMENTAIRE) AS "Moyenne"
FROM (SELECT COUNT(LOGIN_ADHERENT) AS "NB_COMMENTAIRE"
      FROM COMMENTER
      GROUP BY LOGIN_ADHERENT
      WHERE ID_NEWS = 1;);
--moyenne des notes données par les participants à un évènement
SELECT AVG(NOTE)
FROM PARTICIPER
WHERE ID_EVENT = 2;
 --classement des évènements par la note donnée par les participants
SELECT PARTICIPER.ID_EVENT, TITRE_EVENT, AVG(NOTE) AS NOTE
FROM PARTICIPER JOIN EVENEMENTS ON PARTICIPER.ID_EVENT = EVENEMENTS.ID_EVENT
ORDER BY NOTE DESC;
--classement des adhérents participant le plus aux évènements
SELECT ID_PERS, COUNT(*) AS NB_PARTICIPATION
FROM PARTICIPER
GROUP BY ID_PERS
ORDER BY NB_PARTICIPATION DESC;
--Classement des finances des associations à une date donné
create table COTIS_TMP
  (
    SOURCE        VARCHAR2(40)    NOT NULL,
    ARGENT_RECU   NUMBER(6)       NOT NULL,
  );

insert into COTIS_TMP values ('cotisations',SELECT COUNT(*)*(SELECT MONTANT_COTISATION
                                                      FROM ASSOCIATIONS
                                                      WHERE NOM_ASSO = 'EIRBWARE');
                                    FROM COTISER
                                    WHERE (DATE_INSCRIPTION < '01-NOV-18') AND (NOM_ASSO = 'EIRBWARE' )
;);

SELECT SOURCE, ARGENT_RECU
FROM (SELECT ID_FIN AS SOURCE, SUM(SOMME) AS ARGENT_RECU
      FROM FINANCER
      GROUP BY ID_FIN
      WHERE (DATE_FIN < '01-NOV-18') AND (NOM_ASSO = 'EIRBWARE' )
      ;),
      COTIS_TMP
ORDER BY ARGENT_RECU DESC;
