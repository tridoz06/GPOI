<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Gestione Impresa</title>

        <link rel="stylesheet" href="CSS/style.css" />

    </head> 

    <body>
        <?php 
            function create_cards(){
                $servername = "localhost";
                $username = "trida";
                $password = "Mogg4356%#TRIDAPALI";
                $database = "SitoGestioneImpresa";
                
                $content = "";

                $conn = new mysqli($servername, $username, $password, $database);

                if( $conn->connect_error){
                    return "";
                }

                $query = "SELECT id, argument, arg_description, linked_page FROM Cards"

                $result = $conn->query($query);

                if($result->num_rows > 0){
                    for( $i = 1;  $row = $result->fetch_assoc(); $i++ ){
                        $argument  = $row["argument"];
                        $arg_description = $row["arg_description"];
                        $id = $row["id"];
                        $link = $row["linked_page"];


                        $content .= "
                            <div class=\"parent fade__in\">
                                <div class=\"card\">
                                    <div class=\"content-box\">
                                        <h1 class=\"card-title>${argument}</h1>
                                        <p class=\"card-content\">
                                            ${arg_description}
                                        </p>

                                        <span class=\"see-more\"><a href=\"${link}\" class=\"link-pages\">More info</a></span>
                                    </div>
                                    <div class=\"date-box\">
                                        <span class=\"month\">ARG</span>
                                        <span class=\"date\">${id}</span>
                                    </div>
                                </div>
                            </div>                            
                        "
                    }
                }
                
            }

            $cards = create_cards();

            $content = "
		<div class=\"container_bg\">
			<span class=\"title-up fade__in\">GESTIONE IMPRESA</span>


			<div class=\"carousel-container\">
			
			
				<div class=\"carousel\">
                    ${cards}
				</div>
	
		</div>

			</div>
				<button class=\"btn prev-btn\">&#10094;</button>
				<button class=\"btn next-btn\">&#10095;</button>
			</div>

			<div class=\"who_we_are\">
				
				<div class=\"social\">
					<a href=\"https://github.com/tridoz06/SitoGestioneProgettoImpresa\" target=\"_blank\" class=\"source_code\">
						<img style=\"filter:invert(1);\" src=\"/ICONS/icona_github.png\"><br>
						SOURCE CODE HERE
					</a>

				</div>
				
				<div class=\"us\">
					Made by<br>
					Concaro Davide - Popa Sebastiano - Tridapali Leonardo<br>
					5BIIN 2024-2025<br>
				</div>

			</div>

		</div>

        "
        
        ?>
    </body>

</html>