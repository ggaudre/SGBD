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





insert into COMMENTER values (1 , 'jbure' , 'Moi aussi j\'adore les kitkats ! J\'adore aussi prendre un petit minute maid avant la sodo '    );
insert into COMMENTER values (2 , 'msalimi' , 'Wahou !' );
insert into COMMENTER values (2 , 'ecollignon' , ' Les Bonjour, la signature et les PS c\'est pour les chiens?');
insert into COMMENTER values (3 , 'abrama' , 'Je tiens à préciser que ce genre de choses ne m\'arrive que quand je fais des crises de somnanbulisme donc faites pas les bâtards');
insert into COMMENTER values (4 , 'arolin' , 'On dirait moi avec Thierry Bécaro mdr ^^ ' );

insert into COTISER values ( 'msamili' , 'EIRBWARE', 12-NOV-17 );
insert into COTISER values ( 'jbure' , 'EMK' , 15-OCT-17 );
insert into COTISER values ('ggaudre' , 'BDS' , 6-SEP-17 );
insert into COTISER values ( 'psedon' , 'Ligue des maitres de l\'espace et du temps' , 15-DEC-50);

insert into ASSOCIATIONS values ('Ligue des maitres de l\'espace et du temps', 'Dominer le système solaire par la force de la connaissance' , '999999');
insert into ASSOCIATIONS values ( 'Le BAR de l\'ENSEIRB-MATMECA' , ' Être l\'asso la plus fraiche de cette putain d\'école' , );
insert into ASSOCIATIONS values ( 'EIRBWARE' , 'Manger des bites enfermé dans un local entre geeks' , );
insert into ASSOCIATIONS values ( 'INGENIB' , 'Brasser un max de thunes pour tout claquer dans le trou du BAR' , 0);
insert into ASSOCIATIONS values ( 'PIX\'EIRB' , 'Prendre des photos dossiers' , 5 );

insert into NEWS values (ID_NEWS_SEQ , 'Un excellent gouter !', 'Ce vendredi 23 novembre au Bar de l\'ENSEIRB-MATMECA, j\'ai dégusté un bon gouter composé d\'un adorable kitkat acommpagné d\'un délicieux café noir' , 23-NOV-18 , 'Le BAR de l\'ENSEIRB-MATMECA'  );
insert into NEWS values (ID_NEWS_SEQ , 'P Sedon dans le futur', 'JOURNAL DE BORD : Je suis le célèbre P Sedon, aujourd\'hui je ne saurais donner la date, en effet je vous écris cette missive depuis le futur, je suis parvenu à me transporter temporellement jusqu\'au dimanche de cette semaine alors que nous étions le 23, malheureusement j\' ai par conséquent raté le GALA, je viens donc de perdre quinze balles pour rien, je dois avouer être dégouté, personne ne me crois et tout le monde est persuadé que je suis juste en redescente....'  , 25-NOV-18 , 'EIRBWARE'  );
insert into NEWS values (ID_NEWS_SEQ , 'Incroyable : Lola perd ses dents en pleine représentation ! ', 'Journaliste : Bonjour Lola que s\'est-il passé?    Lola : Je ne chais pas cheu qu\'il ch\'est paché, j\'ai du glisser sur la flaque de piche d\'Archur, il a du vouloir éviter chon P Ché ! ' , 24-OCT-18 , 'EMK'  );
insert into NEWS values (ID_NEWS_SEQ , 'Ode au mec qui passe la cireuse', ' Ô toi l\'homme le plus brillant de l\'école, toi qui brille et rend brillant, toi qui lutte contre l\'inertie implacable de la rotation des disques de feutre, toi qui porte en rebelle ton polo trop large, comme un OG digne du prince Xzibit. Tu rends nos vie plus groovy en nous laissant libres, glissant sur la brillance de nos beaux parquets. PEACE  ' , 4-JUL-14 , 'Bruno'  );

insert into RESPONSABLES values ('Ligue des maitres de l\'espace et du temps' , 'Gourou suprême' , 'psedon');
insert into RESPONSABLES values ('Le BAR de l\'ENSEIRB-MATMECA' , 'Biero ASKIP' , 'gfontaine');
insert into RESPONSABLES values ('Chibr\'eirb' , 'Respo con' , 'lsonet' );
insert into RESPONSABLES values ('BDS' , 'Respo Sécu' , 'helmalaki');

insert into GERER values ('Le BAR de l\'ENSEIRB-MATMECA' , 'Président');
insert into GERER values ('BDE' , 'Président');
insert into GERER values ('Le BAR de l\'ENSEIRB-MATMECA' , 'Respo Soirée');
insert into GERER values ('Solid\'eirb', 'Trésorier');
insert into GERER values ('Le BAR de l\'ENSEIRB-MATMECA' , 'Biero Askip');
insert into GERER values ('BDE' , 'Vice-président');
