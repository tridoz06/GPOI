<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>I miei progetti su GitHub</title>
    <link rel="stylesheet" href="CSS/projects.css">
</head>
<body>
    <header>
        <h1>I miei progetti su GitHub</h1>
        <p>Esplora i miei ultimi lavori e contributi.</p>
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
        <p>© 2024 Il tuo nome. Tutti i diritti riservati.</p>
    </footer>
</body>
</html>
