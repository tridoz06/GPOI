<?php

include "read_database.php";

function create_navbar(){

    $table_rows_main_arg = read("SELECT Title from Cards");
    
    $nav_bar_content  = "<nav class =\"menu\">
    <button class=\"prev-btn btn\">&#10094;</button>";

    foreach( $table_rows_main_arg as $data){
        
        $nav_bar_content .= "
            <div class=\"menu_item\">
                <form action=\"page.php\" method=\"POST\">
                    <input name=\"page_name\" value=\"{$data["Title"]}\" type=\"hidden\">
                    <button type=\"submit\" class=\"menu_item_link\">{$data["Title"]}</button>
                </form>
            </div>
            ";
    }

    $nav_bar_content .= "<button class=\"next-btn btn\">&#10095;</button
    </nav>";
    return $nav_bar_content;
}