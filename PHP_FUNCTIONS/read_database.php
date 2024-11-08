<?php

function read( $query) {

    $servername = "localhost";
    $username = "sito";
    $password = "Sito2024_";
    $dbname = "DB_Sito";

    try{
        $pdo = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $pdo -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    }catch(PDOException $e){
        return "errore lettura DB";
    }

    $stmt = $pdo -> prepare($query );
    $stmt->execute();


    $table_rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $table_rows;
}