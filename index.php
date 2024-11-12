<!DOCTYPE html>

    <head>
        <title>Gestore Impresa</title>
		<link rel="stylesheet" href="CSS/style.css" />
		
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		   
    </head>

    <body>

        <div class="container_bg">
			<span class="title-up fade__in">GESTIONE IMPRESA </span>

            <button class="btn prev-btn">&#10094;</button>
			<div class="carousel-container">
			
			
				<div class="carousel">

					<?php

                        include "PHP_FUNCTIONS/main_cards.php";

                        $content = create_cards("Cards");

                        echo $content;

                    ?>
                
                </div>

			</div>
            <button class="btn next-btn">&#10095;</button>

		</div>





        <div class="who_we_are">
                Made by<br>
                Concaro Davide - Popa Sebastiano - Tridapali Leonardo<br>
                5BIIN 2024-2025<br>
        </div>

		<script src="JS/main.js"></script>


    </body>


    </html>