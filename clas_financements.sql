--Classement des finances des associations à une date donné
create table COTIS_TMP
  (
    SOURCE        VARCHAR2(40)    NOT NULL,
    ARGENT_RECU   NUMBER(6)       NOT NULL
  );

insert into COTIS_TMP values ('Cotisations',(SELECT COUNT(*)*(SELECT MONTANT_COTISATION
                                                      FROM ASSOCIATIONS
                                                      WHERE NOM_ASSO = 'EIRBWARE')
                                    FROM COTISER
                                    WHERE (DATE_INSCRIPTION < '01-NOV-18') AND (NOM_ASSO = 'EIRBWARE')
                                    GROUP BY NOM_ASSO));

SELECT SOURCE, ARGENT_RECU
FROM (SELECT NOM_FIN AS SOURCE, SUM(SOMME) AS ARGENT_RECU
      FROM FINANCER JOIN SOURCES_FINANCEMENT ON FINANCER.ID_FIN = SOURCES_FINANCEMENT.ID_FIN
      WHERE (NOM_ASSO = 'EIRBWARE')
      GROUP BY SOURCES_FINANCEMENT.NOM_FIN)
      UNION
      SELECT * FROM COTIS_TMP
ORDER BY ARGENT_RECU DESC;
