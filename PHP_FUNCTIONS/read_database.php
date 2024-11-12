<?php

function read( $query) {

    $servername = "185.229.236.208";
    $username = "sito";
    $password = "Sito2024_";
    $dbname = "DB_Sito";

    try{
        $pdo = new PDO("mysql:host=$servername;dbname=$dbname;charset=utf8", $username, $password);
        $pdo -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    }catch(PDOException $e){
        return "errore lettura DB";
    }

    $stmt = $pdo -> prepare($query );
    $stmt->execute();


    $table_rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $table_rows;
}