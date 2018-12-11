PROMPT "Table présentes : PERSONNES, PARTICIPER, EVENEMENTS, SOURCES_FINANCEMENT, ADHERENTS, FINANCER, COMMENTER, COTISER, ASSOCIATIONS, NEWS, RESPONSABLES, ORGANISER"
ACCEPT table "Quelle table voulez-vous choisir ?"
DESCRIBE &table;
ACCEPT attributs "Quels attributs voulez-vous ? (Si il y en a plusieurs, séparer par des virgules. Ex : nom, prénom)"
ACCEPT condition "Avez-vous des conditions ?"
SELECT &attributs FROM &table WHERE &condition;
