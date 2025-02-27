<!DOCTYPE html>
<html lang="it">

<head>

    <!-- Titolo della pagina -->
    <title>Gestione Impresa</title>

    <!-- Collegamento al file CSS per lo stile della pagina -->
    <link rel="stylesheet" href="CSS/style.css" />

    <!-- Impostazione della codifica dei caratteri -->
    <meta charset="UTF-8">
    
    <!-- Configurazione della viewport per garantire la responsività su dispositivi mobili -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>

<body>

    <!-- Contenitore principale con sfondo -->
    <div class="container_bg">
        
        <!-- Titolo principale con animazione di fade-in -->
        <span class="title-up fade__in">GESTIONE IMPRESA</span>

        <!-- Pulsante per scorrere all'indietro nel carosello -->
        <button class="btn prev-btn">&#10094;</button>

        <!-- Contenitore del carosello -->
        <div class="carousel-container">

            <!-- Sezione che conterrà le card generate dinamicamente -->
            <div class="carousel">

                <?php
                    // Inclusione del file PHP che genera le card
                    include "PHP_FUNCTIONS/main_cards.php";

                    // Creazione delle card basate sulla tabella "Cards" del database
                    $content = create_cards("Cards");

                    // Stampa dell'output HTML generato
                    echo $content;
                ?>

            </div>

        </div>

        <!-- Pulsante per scorrere in avanti nel carosello -->
        <button class="btn next-btn">&#10095;</button>

    </div>

    <!-- Sezione "Chi siamo" con i nomi degli autori del progetto -->
    <div class="who_we_are">
        Made by<br>
        Concaro Davide - Popa Sebastiano - Tridapali Leonardo<br>
        5BIIN 2024-2025<br>
    </div>

    <!-- Collegamento al file JavaScript per gestire l'interattività della pagina -->
    <script src="JS/main.js"></script>

</body>

</html>
