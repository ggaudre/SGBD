PROMPT "Table présentes : PERSONNES, PARTICIPER, EVENEMENTS, SOURCES_FINANCEMENT, ADHERENTS, FINANCER, COMMENTER, COTISER, ASSOCIATIONS, NEWS, RESPONSABLES, ORGANISER"
ACCEPT table PROMPT "Quelle table voulez-vous choisir ?"
DESCRIBE &table;
ACCEPT attributs PROMPT "Quels attributs voulez-vous ? (Ex : nom / nom, prénom / *)"
SELECT &attributs FROM &table;
