<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="CSS/page.css">
        <title>Project</title>
    </head>

    <body>
        <?php
            include "PHP_FUNCTIONS/read_database.php";
            function create_navbar(){

                $table_rows_main_arg = read("SELECT Title from Cards");
                
                $nav_bar_content  = "<nav class = \"menu\">";

                foreach( $table_rows_main_arg as $data){
                    
                    $content .= "
                        <div class=\"manu_item\">
                            <form action=\"page.php\" method=\"POST\">
                                <input name=\"page_name\" value=\"{$data["Title"]}\" type=\"hidden\">
                                <button type=\"submit\" class=\"menu_item_link\">{$data["Title"]}</button>
                            </form>
                        </div>
                        ";
                }

                $nav_bar_content .= "</nav>";
                return $nav_bar_content;
            }

            function create_content($title_search){
                $table_rows_cards = read("SELECT Id FROM Cards WHERE Title=\"{$title_search}\"");
                $content = "<div class=\"content\">";

                foreach($table_rows_cards as $main_data){
                    $table_rows_arguments = read("SELECT * FROM Args WHERE numero_pagina={$main_data["Id"]}" );
                    $content .= "<div class\"row\">";

                    foreach( $table_rows_arguments as $subdata){
                        $id = $subdata["numero_argomento"];

                        if($id % 2 == 1){
                            $content .= "
                                <div class=\"text left\">
                                    <h2 class=\"arg_title\">{$subdata["titolo"]}</h2>
                                    <p>
                                        {$subdata["testo"]}
                                    </p>
                                </div>
                                <div class=\"image right\">
                                    <img src=\"{$subdata["link_immagine"]}\">
                                </div>
                            ";
                        }else if($id % 2 == 0){
                            $content .= "
                                <div class=\"image left\">
                                    <img src=\"{$subdata["link_immagine"]}\">
                                </div>
                                <div class=\"text right\">
                                    <h2 class=\"arg_title\">{$subdata["titolo"]}</h2>
                                    <p>
                                        {$subdata["testo"]}
                                    </p>
                                </div>
                            ";
                        }
                    }

                    $content .= "</div>";
                }
                
                
                $content .= "</div>";

                return $content;
            }

            function set_page_number($page_title){
                $table_rows_selection_id_page = read("SELECT Id FROM Cards WHERE Title=\"{$page_title}\" ");
                $number = $table_rows_selection_id_page[0]["Id"] - 1;
                return "<div class=\"page number" . " _{$number}\"></div>";
            }

            function get_page_number($page_title){
                $table_rows_selection_id_page = read("SELECT Id FROM Cards WHERE Title=\"{$page_title}\" ");
                $number = $table_rows_selection_id_page[0]["Id"] - 1;
                return $number;             
            }



            $page_title = $_POST["page_name"];

            echo set_page_number($page_title);

            echo "
            <div class=\"menu_link_div\">
                <a href=\"index.php\" class=\"menu_link\">
                    HOME
                </a>
            </div>            
            ";

            echo create_navbar();
            echo create_content($page_title);
            $nmb = get_page_number($page_title);
            echo " <script src=\"JS/page.js\"> const numeroIntero = {$nmb};</script>	";
            

        ?>

    </body>

</html>
