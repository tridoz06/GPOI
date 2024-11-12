<?php
    include "read_database.php";
function create_cards($table_name) {

    $content = "";

    $table_rows = read("SELECT Id, Title, Arg_Desc, Link FROM {$table_name}");

    foreach( $table_rows as $data){

        $form = "";
        if( $data['Title'] == "Our Projects"){
            $form = "
                <form action=\"projects.php\" method=\"POST\" >
                    <button type=\"submit\" class=\"see-more\">MORE INFO</button>
                </form>            
            ";
        }else{
            $form = "
                <form action=\"page.php\" method=\"POST\" >
                    <input name=\"page_name\" value=\"{$data['Title']}\" type=\"hidden\">
                    <button type=\"submit\" class=\"see-more\">MORE INFO</button>
                </form>
            ";
        }


        $content .= "
            <div class=\"parent fade__in\">
                <div class=\"card\">
                    <div class=\"content-box\">
                        <h1 class=\"card-title\">{$data['Title']}</h1>

                        <p class=\"card-content\">
                            {$data['Arg_Desc']}
                        </p>

                        {$form}

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
