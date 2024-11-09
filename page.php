<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="CSS/page.css">
        <title>Project</title>
    </head>

    <body>
        <?php

            include "PHP_FUNCTIONS/create_navbar.php";
            include "PHP_FUNCTIONS/create_content.php"; 

            function set_page_number($page_title){
                $table_rows_selection_id_page = read("SELECT Id FROM Cards WHERE Title=\"{$page_title}\" ");
                $number = $table_rows_selection_id_page[0]["Id"] - 1;
                return "<div class=\"page number" . " _{$number}\"></div>";
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

            $navbar = create_navbar();
            echo $navbar;

            $content =  create_content($page_title);
            echo $content;
            
        ?>

        <script src="JS/page.js"></script>
    </body>

</html>
