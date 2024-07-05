<?php
    define("HOST", "localhost");
    define("USER_NAME", "root");
    define("PASS", "");
    define("DB", "jops");
    class Connection{
        function connect(){
            $conn = new PDO("mysql:host=HOST;dbname=DB", USER_NAME, PASS);
            
        }
    }