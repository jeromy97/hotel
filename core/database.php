<?php

require_once BASE . 'config/config.php';

class Database
{
    private $conn;

    public function __construct() {
        $config = new Config();
        $this->conn = new mysqli($config->host, $config->username, $config->password, $config->database);
        // Check connection
        if ($this->conn->connect_errno) {
            echo "Failed to connect to MySQL: " . $this->conn->connect_error;
            exit();
        }
    }

    public function query(string $query, array $params = null)
    {
        if ($params !== null) {
            foreach ($params as $param) {
                $pos = strpos($query, '?');
                if ($pos !== false) {
                    $query = substr_replace($query, mysqli_real_escape_string($this->conn, $param), $pos, 1);
                }
            }
        }

        // Somehow this character appeared
        $query = str_replace('﻿', '', $query);

        $result = $this->conn->query($query);

        if (str_starts_with(trim($query), 'SELECT')) {
            $returnData = [];
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    $returnData[] = $row;
                }
            }
            return $returnData;
        }
    }
    
    public function row(string $query, array $params = null)
    {
        if (!str_starts_with(trim($query), 'SELECT'))
            throw new Exception("To select a single row, a query must start with 'SELECT'");
        
        $result = $this->query($query, $params);
        return $result[0];
    }
}
