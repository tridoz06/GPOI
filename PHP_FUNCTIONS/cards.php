<?php
    include "read_database.php";
function create_cards() {

    $content = "";

    $table_rows = read("SELECT Id, Title, Arg_Desc, Link FROM Cards");

    foreach( $table_rows as $data){
        $content .= "
            <div class=\"parent fade__in\">
                <div class=\"card\">
                    <div class=\"content-box\">
                        <h1 class=\"card-title\">{$data['Title']}</h1>
                        <p class=\"card-content\">
                            {$data['Arg_Desc']}
                        </p>
                        <form action=\"page.php\" method=\"POST\" >
                            <input name=\"page_name\" value=\"{$data['Title']}\" type=\"hidden\">
                            <button type=\"submit\" class=\"see-more\">MORE INFO</button>
                        </form>


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