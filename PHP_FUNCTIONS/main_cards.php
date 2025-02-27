<?php
    // Includiamo il file per la lettura del database
    include "read_database.php";

/**
 * Funzione per generare le card HTML basate sui dati estratti dal database.
 * 
 * @param string $table_name Il nome della tabella da cui recuperare i dati.
 * @return string Il contenuto HTML generato con le card.
 */

 
function create_cards($table_name) {

    // Inizializziamo una stringa vuota per contenere le card
    $content = "";

    // Recuperiamo i dati dal database (Id, Title, Arg_Desc e Link) per la tabella specificata
    $table_rows = read("SELECT Id, Title, Arg_Desc, Link FROM {$table_name}");

    // Iteriamo su ogni riga dei risultati del database
    foreach ($table_rows as $data) {
        
        // Inizializziamo il form vuoto
        $form = "";

        // Se il titolo della card è "Our Projects", indirizziamo il form a "projects.php"
        if ($data['Title'] == "Our Projects") {
            $form = "
                <form action=\"projects.php\" method=\"POST\" >
                    <button type=\"submit\" class=\"see-more\">MORE INFO</button>
                </form>            
            ";
        } else {
            // Altrimenti, il form invierà i dati a "page.php"
            $form = "
                <form action=\"page.php\" method=\"POST\" >
                    <input name=\"page_name\" value=\"{$data['Title']}\" type=\"hidden\">
                    <button type=\"submit\" class=\"see-more\">MORE INFO</button>
                </form>
            ";
        }

        // Costruiamo il contenuto HTML della card con titolo, descrizione e form
        $content .= "
            <div class=\"parent fade__in\">
                <div class=\"card\">
                    <div class=\"content-box\">
                        <h1 class=\"card-title\">{$data['Title']}</h1>

                        <p class=\"card-content\">
                            {$data['Arg_Desc']}
                        </p>

                        {$form}

                    </div>
                    <div class=\"date-box\">
                        <span class=\"month\">ARG</span>
                        <span class=\"date\">{$data['Id']}</span>
                    </div>
                </div>
            </div>
        ";
    }
    
    // Ritorniamo il contenuto HTML generato
    return $content;
}
?>
