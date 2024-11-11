<?php

    define("STS", "mysql:host=localhost;dbname=jobs");
    define("USER_NAME", "root");
    define("PASS", "");

    class Connection {
        private $conn;
        private function connect() {
            try {
                $this->conn = new PDO(STS, USER_NAME, PASS);
            } catch (Exception $e) {
                
                echo 'Connection failed : ' . $e->getMessage();
            }
        }
    }
    