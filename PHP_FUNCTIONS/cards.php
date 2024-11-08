<?php

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