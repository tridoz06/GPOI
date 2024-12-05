<?php
Class db_credentials{
    public static $servername = "185.229.236.208";
    public static $username = "sito";
    public static $password = "Sito2024_";
    public static $dbname = "DB_Sito";
}

function read( $query) {
    
    try{
        $dsn = "mysql:host=" . db_credentials::$servername . ";dbname=" . db_credentials::$dbname . ";charset=utf8";

        $pdo = new PDO($dsn, db_credentials::$username, db_credentials::$password);
        $pdo -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    }catch(PDOException $e){

        return "errore lettura DB";
    
    }

    $stmt = $pdo -> prepare($query );
    $stmt->execute();

    $table_rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

    return $table_rows;

}