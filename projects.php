<!DOCTYPE html>
<html lang="it">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>I nostri progetti GitHub</title>
        <link rel="stylesheet" href="CSS/projects.css">
    </head>
    <body>
        <header>
            <h1>I nostri Progetti GitHub</h1>
            <p>Esplora i nostri ultimi fantastici lavori.</p>
            <form action="index.php" method="POST">
                <button class="btn">HOME</button>
            </form>
        </header>

        <section class="projects-grid">

            <?php
                include "PHP_FUNCTIONS/projects_card.php";

                
                $content = create_cards();
                
                echo $content;

            ?>
        </section>

        <footer>
            <p>Made by Concaro Davide - Popa Sebastiano - Tridapali Leonardo 5BIIN ITIS E. Fermi.</p>
        </footer>

    </body>
</html>
