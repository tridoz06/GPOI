<?php

// Includiamo il file per la lettura del database
include "read_database.php";

/**
 * Funzione per generare card HTML basate sui dati della tabella "Projects".
 * 
 * Questa funzione recupera tutti i record dalla tabella "Projects" e genera
 * un blocco HTML per ciascun progetto, con titolo, descrizione e link esterno.
 *
 * @return string Il contenuto HTML generato con le card dei progetti.
 */
function create_cards(){
    // Inizializziamo una stringa vuota per contenere l'output HTML
    $content = "";

    // Recuperiamo tutti i record dalla tabella "Projects"
    $table_rows = read("SELECT * FROM Projects");

    // Iteriamo su ogni riga dei risultati del database
    foreach ($table_rows as $data) {
        // Creiamo una card HTML per ogni progetto con titolo, descrizione e link
        $content .= "
            <article class=\"project-card\">
                <h2>{$data["Title"]}</h2>
                <p>{$data["Arg_Desc"]}</p>
                <a href=\"{$data["Link"]}\" target=\"_blank\" class=\"btn\">SEE MORE</a>
            </article>        
        ";
    }

    // Ritorniamo il contenuto HTML generato
    return $content;
}
?>
