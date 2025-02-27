<!DOCTYPE html>
<html lang="it">

<head>
    <!-- Collegamento al file CSS per lo stile della pagina -->
    <link rel="stylesheet" href="CSS/page.css">
</head>

<body>

    <?php
        // Inclusione del file che contiene la funzione per leggere i dati dal database
        include "PHP_FUNCTIONS/read_database.php";

        /**
         * Funzione per creare la barra di navigazione dinamicamente
         * Legge i titoli delle schede dalla tabella "Cards" e crea pulsanti di navigazione
         */
        function create_navbar() {
            // Recupera i titoli delle schede dal database
            $table_rows_main_arg = read("SELECT Title FROM Cards");

            // Inizio della navbar con pulsante per scorrere indietro
            $nav_bar_content  = "<nav class=\"menu\"><br>
            <button class=\"prev-btn btn\">&#10094;</button>";

            // Creazione dei pulsanti per ogni scheda
            foreach ($table_rows_main_arg as $data) {
                $form = "";
                if ($data["Title"] == "Our Projects") {
                    // Se il titolo è "Our Projects", reindirizza alla pagina "projects.php"
                    $form = "
                        <form action=\"projects.php\" method=\"POST\">
                            <button type=\"submit\" class=\"menu_item_link\">{$data["Title"]}</button>
                        </form>
                    ";
                } else {
                    // Altrimenti, reindirizza a "page.php" passando il titolo come input nascosto
                    $form = "
                        <form action=\"page.php\" method=\"POST\">
                            <input name=\"page_name\" value=\"{$data["Title"]}\" type=\"hidden\">
                            <button type=\"submit\" class=\"menu_item_link\">{$data["Title"]}</button>
                        </form>
                    ";
                }
                // Aggiunge il pulsante alla navbar
                $nav_bar_content .= "
                    <div class=\"menu_item\">
                        {$form}
                    </div>
                ";
            }

            // Aggiunta del pulsante per scorrere in avanti e chiusura della navbar
            $nav_bar_content .= "<button class=\"next-btn btn\">&#10095;</button>
            </nav><br><br>";
            return $nav_bar_content;
        }

        /**
         * Funzione per generare il contenuto dinamico della pagina
         * @param string $title_search Titolo della scheda selezionata
         * @return string Contenuto HTML generato dinamicamente
         */
        function create_content($title_search) {
            // Recupera l'ID della scheda selezionata
            $table_rows_cards = read("SELECT Id FROM Cards WHERE Title=\"{$title_search}\"");
            $content = "<div class=\"content\">";

            foreach ($table_rows_cards as $main_data) {
                // Recupera gli argomenti relativi alla scheda selezionata
                $table_rows_arguments = read("SELECT * FROM Args WHERE numero_pagina=\"{$main_data["Id"]}\"");

                foreach ($table_rows_arguments as $subdata) {
                    $content .= "<div class=\"row\">";

                    $id = $subdata["numero_argomento"];
                    $content_type = $subdata["Content_Type"];
                    $direction = $id % 2; // Alterna la disposizione del contenuto

                    switch ($content_type) {
                        case "IMG":
                            // Se il contenuto è un'immagine, la posiziona in modo alternato
                            if ($direction == 1) {
                                $content .= "
                                    <div class=\"text left\">
                                        <h2 class=\"arg_title\">{$subdata["titolo"]}</h2>
                                        <p>{$subdata["testo"]}</p>
                                    </div>
                                    <div class=\"image right\">
                                        <img src=\"{$subdata["link_immagine"]}\">
                                    </div>
                                ";
                            } else {
                                $content .= "
                                    <div class=\"image left\">
                                        <img src=\"{$subdata["link_immagine"]}\">
                                    </div>
                                    <div class=\"text right\">
                                        <h2 class=\"arg_title\">{$subdata["titolo"]}</h2>
                                        <p>{$subdata["testo"]}</p>
                                    </div>
                                ";
                            }
                            break;

                        case "VOID":
                            // Se il contenuto è vuoto, viene lasciato uno spazio vuoto
                            if ($direction == 1) {
                                $content .= "
                                    <div class=\"text left\">
                                        <h2 class=\"arg_title\">{$subdata["titolo"]}</h2>
                                        <p>{$subdata["testo"]}</p>
                                    </div>
                                    <div class=\"image right\"></div>
                                ";
                            } else {
                                $content .= "
                                    <div class=\"image left\"></div>
                                    <div class=\"text right\">
                                        <h2 class=\"arg_title\">{$subdata["titolo"]}</h2>
                                        <p>{$subdata["testo"]}</p>
                                    </div>
                                ";
                            }
                            break;

                        case "CANVA":
                            // Se il contenuto è una canvas, include lo script JavaScript per la gestione
                            if ($direction == 1) {
                                $content .= "
                                    <div class=\"text left\">
                                        <h2 class=\"arg_title\">{$subdata["titolo"]}</h2>
                                        <p>{$subdata["testo"]}</p>
                                    </div>
                                    <div class=\"canva right\"></div>
                                    <script src=\"JS/bep.js\"></script>
                                ";
                            } else {
                                $content .= "
                                    <div class=\"canva left\"></div>
                                    <div class=\"text right\">
                                        <h2 class=\"arg_title\">{$subdata["titolo"]}</h2>
                                        <p>{$subdata["testo"]}</p>
                                    </div>
                                    <script src=\"JS/bep.js\"></script>
                                ";
                            }
                            break;
                    }

                    $content .= "</div>";
                }
            }

            $content .= "</div>";
            return $content;
        }

        /**
         * Funzione per ottenere il numero della pagina basato sul titolo
         * @param string $page_title Titolo della pagina
         * @return int Numero della pagina
         */
        function get_page_number($page_title) {
            $table_rows_selection_id_page = read("SELECT Id FROM Cards WHERE Title=\"{$page_title}\"");
            $number = $table_rows_selection_id_page[0]["Id"] - 1;
            return $number;
        }

        // Recupera il titolo della pagina dalla richiesta POST
        $page_title = $_POST["page_name"];

        // Ottiene il numero della pagina corrispondente al titolo
        $page_number = get_page_number($page_title);

        // Stampa i link di navigazione
        echo "
        <div class=\"menu_link_div\">
            <a href=\"index.php\" class=\"menu_link\">
                HOME
            </a>
            <a number_page=\"{$page_number}\" class=\"page_number_anchor\" style=\"display:none;\"></a>
        </div>            
        ";

        // Genera la navbar e il contenuto della pagina
        $navbar = create_navbar();
        $content = create_content($page_title);

        // Stampa la navbar e il contenuto generato
        echo $navbar;
        echo $content;
    ?>

    <!-- Collegamento al file JavaScript per la gestione della pagina -->
    <script src="JS/page.js"></script>

</body>

</html>
