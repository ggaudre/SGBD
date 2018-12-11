<?php
// connexion.php se connecte à la base.
$ora_conn = ora_logon("jbure","mdpjbure");
?>



<?

$query = "SELECT NOM_ASSO
          FROM ASSOCIATIONS
          ORDER BY NOM_ASSO;";



// Il suffit de mette en commentaire error_reporting pour faire du
// débogage - voir quand il n'y a aucun résultat "NO DATA FOUND" par exemple.
error_reporting(0);

// Crée un tableau, un curseur, compte les colonnes,
// fait le fetch en insérant dans le tableau.
$results = array();
// ora_do analyse (ora_parse) $query, l'exécute (ora_exec)
// et lit la première ligne du résultat (ora_fetch).
$ora_cur = ora_do($ora_conn, $query);

if ($ora_cur)
{
    // Nombre de colonnes
    $numCols = ora_numcols($ora_cur);

    // Prends la première ligne et la met dans le tableau...
    $row = array();
    for($i=0; $i<$numCols; $i++)
    {
        // Parcours des colonnes
        $row[ora_columnname($ora_cur, $i)] = ora_getcolumn($ora_cur, $i);
    }
    array_push($results, $row);

    // "Fetch" des lignes, une par une, en créant un tableau pour chaque ligne.
    // Chaque tableau est inséré à la suite du tableau $results.
    while (ora_fetch($ora_cur))
    {
        // Pour chaque ligne
        $row = array();
        for($i=0; $i<$numCols; $i++)
        {
            // Chaque colonne
            $row[ora_columnname($ora_cur, $i)] = ora_getcolumn($ora_cur, $i);
        }
        array_push($results, $row);
    }
}

// Le fameux error_reporting. Mettre en commentaire pour voir les no data found.
error_reporting(1);









// Parcours du tableau $results pour afficher les résultats :
if (count($results)) // Si y'a des résultat
{
    reset($results); // se placer à la première ligne du tableau $results
    while($res = each($results)) // Parcourir le tableau $results
    {
        echo $res[1]["NOM_ASSO"];    // nom
    //    echo $res[1]["PRENOM"]; // prenom
        // Attention, il faut bien mettre les noms de colonnes en MAJUSCULE
        // et entre " et "

        // Traitement...
        echo "<br />";
    }
}
else // Pas de résultat
{
    echo "Y'a personne";
}
?>














<?php
// Se déconnecter de la base
ora_logoff($ora_conn);
?>
