<!DOCTYPE html>

    <head>
        <title>Gestore Impresa</title>
		<link rel="stylesheet" href="CSS/style.css" />
		
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		   
    </head>

    <body>

        <div class="container_bg">
			<span class="title-up fade__in">GESTIONE IMPRESA</span>


			<div class="carousel-container">
			
			
				<div class="carousel">

					<?php
                        include "PHP_FUNCTIONS/cards.php";

                        function create_cards(): string{

                            $content = "";
                            $servername = "localhost";
                            $username = "sito";
                            $password = "sito2024";
                            $dbname = "DB_Sito";
                        
                            $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
                            $pdo -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                        
                            $stmt = $pdo -> prepare("SELECT Id, Title, Arg_Desc, Link from Cards");
                            $stmt->execute();
                        
                        
                            $table_rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
                        
                            foreach( $table_rows as $data){
                                $content .= "
                                    <div class=\"parent fade__in\">
                                        <div class=\"card\">
                                            <div class=\"content-box\">
                                                <h1 class=\"card-title\">{$data['Title']}</h1>
                                                <p class=\"card-content\">
                                                    {$data['Arg_Desc']}
                                                </p>
                                                <span class=\"see-more\"><a href=\"{$data['Link']}\" class=\"link-pages\">More Info</a></span>
                                            </div>
                                            <div class=\"date-box\">
                                                <span class=\"month\">ARG</span>
                                                <span class=\"date\">{$data['Id']}</span>
                                            </div>
                                        </div>
                                    </div>
                                ";
                            }
                            
                            return $content;
                        }


                        $content = create_cards();
                        echo $content;
                    ?>
                
                </div>

			</div>
	

		</div>

        </div>
            <button class="btn prev-btn">&#10094;</button>
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