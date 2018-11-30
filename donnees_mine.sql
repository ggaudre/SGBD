-- ============================================================
--    suppression des donnees
-- ============================================================

delete from PERSONNES ;
delete from PARTICIPER ;
delete from EVENEMENTS ;
delete from SOURCES_FINANCEMENT ;
delete from ADHERENTS ;
delete from FINANCER ;
delete from COMMENTER ;
delete from COTISER ;
delete from ASSOCIATIONS ;
delete from NEWS ;
delete from RESPONSABLES ;
delete from GERER ;

commit ;

-- ============================================================
--    creation des donnees
-- ============================================================

-- PERSONNES

insert into PERSONNES (ID_PERS_SEQ, 'BURÉ', 'JULIEN');
insert into PERSONNES (ID_PERS_SEQ, 'GAUDRÉ', 'GABIN');
insert into PERSONNES (ID_PERS_SEQ, 'SALIMI', 'MEHDY');
insert into PERSONNES (ID_PERS_SEQ, 'SEDON', 'PIERRE');
insert into PERSONNES (ID_PERS_SEQ, 'MARTINEZ', 'AXEL');
insert into PERSONNES (ID_PERS_SEQ, 'AGUILERA', 'AYMERIC');
insert into PERSONNES (ID_PERS_SEQ, 'PERIS', 'SARAH');
insert into PERSONNES (ID_PERS_SEQ, 'SONET', 'LUCA');
insert into PERSONNES (ID_PERS_SEQ, 'LEE SHAO SHIT', 'TÉRENCE');
insert into PERSONNES (ID_PERS_SEQ, 'ROYANT', 'YANN');

commit;


-- PARTICIPER

insert into PARTICIPER (2, 1, 2, 'J\'en ai pris plein la vue, merci Jacquie et Mich\'eirb', 9);
insert into PARTICIPER (1, 8, 8, 'Le prix ça fait mal au cul !!', 2);


-- EVENEMENTS

insert into EVENEMENTS (ID_EVENT_SEQ, 'GALA', 'GALA organisé pour célébrer le diplôme des 4A', 24-NOV-18, 55000, 'Chateau Lafitte', 500, 24-NOV-18, 24-NOV-18, NULL, 'GALA', cdelignac);
insert into EVENEMENTS (ID_EVENT_SEQ, 'BARTOUTATISE', 'Soirée organisée par la Cafétéria de l\'ENSEIRB-MATMECA', 7-NOV-18, 100, 'Cafétéria de l\'école', 400, 7-NOV-18, 7-NOV-18, NULL, 'Le BAR de l\'ENSEIRB-MATMECA', aacosta);

commit;

-- SOURCES_FINANCEMENT

insert into SOURCES_FINANCEMENT
