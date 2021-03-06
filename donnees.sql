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
delete from ORGANISER ;

commit ;

-- ============================================================
--    creation des donnees
-- ============================================================

-- PERSONNES

insert into PERSONNES values (ID_PERS_SEQ.nextval, 'BURE', 'JULIEN');
insert into PERSONNES values (ID_PERS_SEQ.nextval, 'GAUDRE', 'GABIN');
insert into PERSONNES values (ID_PERS_SEQ.nextval, 'SALIMI', 'MEHDY');
insert into PERSONNES values (ID_PERS_SEQ.nextval, 'SEDON', 'PIERRE');
insert into PERSONNES values (ID_PERS_SEQ.nextval, 'MARTINEZ', 'AXEL');
insert into PERSONNES values (ID_PERS_SEQ.nextval, 'AGUILERA', 'AYMERIC');
insert into PERSONNES values (ID_PERS_SEQ.nextval, 'PERIS', 'SARAH');
insert into PERSONNES values (ID_PERS_SEQ.nextval, 'SONET', 'LUCA');
insert into PERSONNES values (ID_PERS_SEQ.nextval, 'LEE SHAO SHIT', 'TERENCE');
insert into PERSONNES values (ID_PERS_SEQ.nextval, 'ROYANT', 'YANN');
insert into PERSONNES values (ID_PERS_SEQ.nextval, 'ACOSTA', 'ANTHONY');
insert into PERSONNES values (ID_PERS_SEQ.nextval, 'GARCIA--MEIRELES', 'JORDAN');
insert into PERSONNES values (ID_PERS_SEQ.nextval, 'RICHARD', 'ANTOINE');
insert into PERSONNES values (ID_PERS_SEQ.nextval, 'LOUYOT', 'EMMANUEL');
insert into PERSONNES values (ID_PERS_SEQ.nextval, 'FONTAINE', 'GAEL');
insert into PERSONNES values (ID_PERS_SEQ.nextval, 'EL MALAKI', 'HAMZA');


commit;


-- PARTICIPER

insert into PARTICIPER values (2, 1, 'J''en ai pris plein la vue, merci les amigos', 9);
insert into PARTICIPER values (1, 8, 'Le prix ca fait mal au portefeuille !!', 2);

commit;


-- EVENEMENTS

insert into EVENEMENTS values (ID_EVENT_SEQ.nextval, 'GALA', 'GALA organisé pour célébrer le diplôme des 4A', '24-NOV-18', 55000, 'Chateau Lafitte', 15, 15, 500, '24-NOV-18', '24-NOV-18', NULL);
insert into EVENEMENTS values (ID_EVENT_SEQ.nextval, 'BARTOUTATISE', 'Soirée organisée par la Cafétéria de l''ENSEIRB-MATMECA', '27-DEC-18', 100, 'Cafétéria de l''école', 0, 0, 400, '27-DEC-18', '27-DEC-18', NULL);

commit;


-- SOURCES_FINANCEMENT

insert into SOURCES_FINANCEMENT values (ID_FIN_SEQ.nextval, 'ENTREPRISE', 'THALES');
insert into SOURCES_FINANCEMENT values (ID_FIN_SEQ.nextval, 'PRIVEE', 'DUVIVIER');
insert into SOURCES_FINANCEMENT values (ID_FIN_SEQ.nextval, 'ETAT', 'MINISTÈRE DE LA RECHERCHE ET DE L''ENSEIGNEMENT SUPÉRIEUR');

commit;


-- ADHERENTS

insert into ADHERENTS values ('msalimi', 'msalimi@enseirb-matmeca.fr', 'INFORMATIQUE', 2020, 'mdp_msalimi', 3);
insert into ADHERENTS values ('ggaudre', 'ggaudre@enseirb-matmeca.fr', 'INFORMATIQUE', 2020, 'mdp_ggaudre', 2);
insert into ADHERENTS values ('jbure', 'jbure@enseirb-matmeca.fr', 'INFORMATIQUE', 2020, 'mdp_jbure', 1);
insert into ADHERENTS values ('gfontaine', 'gfontaine@enseirb-matmeca.fr', 'ELECTRONIQUE', 2020, 'mdp_gfontaine', 15);
insert into ADHERENTS values ('psedon', 'psedon@enseirb-matmeca.fr', 'INFORMATIQUE', 2020, 'mdp_psedon', 4);
insert into ADHERENTS values ('helmalaki', 'helmalaki@enseirb-matmeca.fr', 'MATMECA', 2020, 'mdp_helmalaki', 16);
insert into ADHERENTS values ('lsonet', 'lsonet@enseirb-matmeca.fr', 'INFORMATIQUE', 2020, 'mdp_lsonet', 8);
commit;


-- FINANCER
insert into FINANCER values (1, 'INGENIB', 10000);
insert into FINANCER values (2, 'BDE', 300);
insert into FINANCER values (3, 'EIRBWARE', 1000);
insert into FINANCER values (2, 'EIRBWARE', 1100);

commit;


-- COMMENTER

insert into COMMENTER values (1 , 'jbure' , 'Moi aussi j''adore les kitkats ! J''adore aussi prendre un petit minute maid avant l''anglais '    );
insert into COMMENTER values (2 , 'msalimi' , 'Wahou !' );
insert into COMMENTER values (2 , 'ecollignon' , ' Les Bonjour, la signature et les PS c''est pour les chiens?');
insert into COMMENTER values (3 , 'abrama' , 'Je tiens à préciser que ce genre de choses ne m''arrive que quand je fais des crises de somnanbulisme donc faites pas les médisants');
insert into COMMENTER values (4 , 'arolin' , 'On dirait moi avec Thierry Bécaro mdr ^^ ' );

commit;


--COTISER

insert into COTISER values ( 'msamili' , 'EIRBWARE', '12-NOV-17' );
insert into COTISER values ( 'jbure' , 'EMK' , '15-OCT-17' );
insert into COTISER values ('ggaudre' , 'BDS' , '6-SEP-17' );
insert into COTISER values ( 'psedon' , 'Ligue des maitres de l''espace et du temps' , '15-DEC-50');

commit;


--ASSOCIATIONS

insert into ASSOCIATIONS values ('Ligue des maitres de l''espace et du temps', 'Dominer le système solaire par la force de la connaissance' , 999999);
insert into ASSOCIATIONS values ( 'Le BAR de l''ENSEIRB-MATMECA' , ' Être l''asso la plus fraiche de cette école', 0);
insert into ASSOCIATIONS values ( 'EIRBWARE' , 'Manger des cornflakes enfermé dans un local entre geeks', 0);
insert into ASSOCIATIONS values ( 'INGENIB' , 'Brasser un max de thunes pour tout claquer dans le trou du BAR' , 0);
insert into ASSOCIATIONS values ( 'PIX''EIRB' , 'Prendre des photos dossiers' , 5 );
insert into ASSOCIATIONS values ('EMK', 'Danser en roulant', 2);
insert into ASSOCIATIONS values ('BDE', 'Promouvoir la vie associative', 90);
insert into ASSOCIATIONS values ('BDS', 'Faire du sport', 60);

commit;


--NEWS

insert into NEWS values (ID_NEWS_SEQ.nextval , 'Un excellent gouter !', 'Ce vendredi 23 novembre au Bar de l''ENSEIRB-MATMECA, j''ai dégusté un bon gouter composé d''un adorable kitkat acommpagné d''un délicieux café noir' , '23-NOV-18' , 2 );
insert into NEWS values (ID_NEWS_SEQ.nextval , 'P Sedon dans le futur', 'JOURNAL DE BORD : Je suis le célèbre P Sedon, aujourd''hui je ne saurais donner la date, en effet je vous écris cette missive depuis le futur, je suis parvenu à me transporter temporellement jusqu''au dimanche de cette semaine alors que nous étions le 23, malheureusement j''ai par conséquent raté le GALA, je viens donc de perdre quinze balles pour rien, je dois avouer être dégouté, personne ne me crois et tout le monde est persuadé que je suis juste en redescente....'  , '25-NOV-18' , 1 );
insert into NEWS values (ID_NEWS_SEQ.nextval , 'Incroyable : Lola perd ses dents en pleine représentation ! ', 'Journaliste : Bonjour Lola que s''est-il passé?    Lola : Je ne chais pas cheu qu''il ch''est paché, j''ai du glisser sur la flaque jus d''orange d''Archur, il a du vouloir éviter chon P Ché ! ' , '24-OCT-18' , 3 );
insert into NEWS values (ID_NEWS_SEQ.nextval , 'Ode au mec qui passe la cireuse', ' Ô toi l''homme le plus brillant de l''école, toi qui brille et rend brillant, toi qui lutte contre l''inertie implacable de la rotation des disques de feutre, toi qui porte en rebelle ton polo trop large, comme un OG digne du prince Xzibit. Tu rends nos vie plus groovy en nous laissant libres, glissant sur la brillance de nos beaux parquets. PEACE  ' , '4-JUL-14' , 5 );

commit;


--RESPONSABLES

insert into RESPONSABLES values (ID_RESPO_SEQ.nextval, 'Gourou suprême' , 'psedon', 'Ligue des maitres de l''espace et du temps');
insert into RESPONSABLES values (ID_RESPO_SEQ.nextval, 'Biero ASKIP' , 'gfontaine', 'Le BAR de l''ENSEIRB-MATMECA');
insert into RESPONSABLES values (ID_RESPO_SEQ.nextval, 'Respo con' , 'lsonet', 'Chil''eirb');
insert into RESPONSABLES values (ID_RESPO_SEQ.nextval, 'Respo Sécu' , 'helmalaki', 'BDS');

commit;


--ORGANISER

insert into ORGANISER values (2, 'Le BAR de l''ENSEIRB-MATMECA', 'ggaudre');
insert into ORGANISER values (2, 'Le BAR de l''ENSEIRB-MATMECA', 'jbure');
insert into ORGANISER values (1, 'GALA', 'msalimi');

commit;
