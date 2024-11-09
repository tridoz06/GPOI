<?php

include "read_database.php";

function create_content($title_search){

    $table_rows_cards = read("SELECT Id FROM Cards WHERE Title=\"{$title_search}\"");
    $content = "<div class=\"content\">";

    foreach($table_rows_cards as $main_data){
        $table_rows_arguments = read("SELECT * FROM Args WHERE numero_pagina=\"{$main_data["Id"]}\"" );
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