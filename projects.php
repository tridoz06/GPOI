<!DOCTYPE html>
<html lang="it">
    
    <head>
        <!-- Definizione della codifica dei caratteri e della visualizzazione per dispositivi mobili -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!-- Titolo della pagina -->
        <title>I nostri progetti GitHub</title>
        
        <!-- Link al file CSS per la formattazione della pagina -->
        <link rel="stylesheet" href="CSS/projects.css">
    </head>

    <body>

        <!-- Sezione Header: contiene il titolo e la descrizione della pagina -->
        <header>
            <h1>I nostri Progetti GitHub</h1>
            <p>Esplora i nostri ultimi fantastici lavori.</p>

            <!-- Form con bottone per tornare alla homepage -->
            <form action="index.php" method="POST">
                <button class="btn">HOME</button>
            </form>

        </header>

        <!-- Sezione principale della pagina: visualizzazione dei progetti -->
        <section class="projects-grid">

            <?php
                // Inclusione del file PHP contenente la funzione per generare i progetti
                include "PHP_FUNCTIONS/projects_card.php";

                // Chiamata alla funzione 'create_cards' per ottenere il contenuto HTML dei progetti
                $content = create_cards();
                
                // Echo del contenuto generato dalla funzione per visualizzarlo nella pagina
                echo $content;
            ?>

        </section>

        <!-- Footer: informazioni sui creatori della pagina -->
        <footer>
            <p>Made by Concaro Davide - Popa Sebastiano - Tridapali Leonardo 5BIIN ITIS E. Fermi.</p>
        </footer>

    </body>
</html>
