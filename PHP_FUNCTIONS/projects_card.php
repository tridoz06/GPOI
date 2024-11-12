<?php

include "read_database.php";

function create_cards(){
    $content = "";

    $table_rows = read("SELECT * from Projects");

    foreach( $table_rows as $data ){
        $content .= "
            <article class=\"project-card\">
                <h2>{$data["Title"]}</h2>
                <p>{$data["Arg_Desc"]}</p>
                <a href=\"{$data["Link"]}\" target=\"_blank\" class=\"btn\">SEE MORE</a>
            </article>        
        ";
    }


    return $content;
}