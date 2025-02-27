<?php

/**
 * Classe per memorizzare le credenziali di accesso al database.
 * 
 * Questa classe contiene le informazioni necessarie per connettersi al database MySQL,
 * come il server, il nome utente, la password e il nome del database.
 */
class db_credentials {
    public static $servername = "185.229.236.208"; // Indirizzo del server MySQL
    public static $username = "sito";             // Nome utente per l'accesso al database
    public static $password = "Sito2024_";        // Password dell'utente del database
    public static $dbname = "DB_Sito";            // Nome del database da utilizzare
}

/**
 * Funzione per eseguire query SQL di lettura sul database.
 * 
 * Questa funzione stabilisce una connessione con il database utilizzando PDO,
 * esegue la query fornita e restituisce i risultati sotto forma di array associativo.
 *
 * @param string $query La query SQL da eseguire.
 * @return array|string Un array contenente i risultati della query o un messaggio di errore.
 */
function read($query) {
    try {
        // Creazione della stringa DSN per la connessione al database
        $dsn = "mysql:host=" . db_credentials::$servername . ";dbname=" . db_credentials::$dbname . ";charset=utf8";

        // Creazione dell'oggetto PDO per la connessione al database
        $pdo = new PDO($dsn, db_credentials::$username, db_credentials::$password);
        
        // Impostiamo PDO per lanciare eccezioni in caso di errore
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    } catch (PDOException $e) {
        // Se si verifica un errore nella connessione, restituiamo un messaggio di errore
        return "Errore lettura DB";
    }

    // Prepariamo ed eseguiamo la query SQL
    $stmt = $pdo->prepare($query);
    $stmt->execute();

    // Recuperiamo i risultati come array associativo
    $table_rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Restituiamo i dati ottenuti dalla query
    return $table_rows;
}
?>
