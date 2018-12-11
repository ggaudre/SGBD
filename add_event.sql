-- Ajout d'un événement
PROMPT "Ajout d'un événement"
insert into EVENEMENTS values (ID_EVENT_SEQ.nextval, 'Event', 'Ceci est l''évenement ajouté', '09-NOV-2018', 4000, 'ENSEIRB-MATMECA', 3, 5, 550, '14-NOV-2018', '14-NOV-2018', NULL);
