<?php

function write_log(){
    $logFile = '../request.log';

    $ipAddress = $_SERVER['REMOTE_ADDR'];
    $clientPort = $_SERVER['REMOTE_PORT'];
    $requestTime = date("Y-m-d H:i:s");

    $logEntry = "[$requestTime] IP: $ipAddress, Porta: $clientPort\n";

    file_put_contents($logFile, $logEntry, FILE_APPEND | LOCK_EX);

}