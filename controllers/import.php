<?php

class ImportController
{
    private $loader;
    private $db;

    public function __construct() {
        $this->loader = new Loader();
        $this->db = new Database();
    }

    public function index()
    {
        // Check if the import has already been done
        $count = $this->db->row("SELECT COUNT(id) AS count FROM hotel")['count'];
        if ($count > 0) exit('Data already imported');

        // Get csv
        $csv = $this->loader->source('Fletcher Hotels.csv');

        // Prepare query
        $values = '';
        $params = [];
        foreach ($csv as $csvRow) {
            foreach ($csvRow as $csvCol) {
                array_push($params, $csvCol);
            }
            $values .= "('?','?','?','?','?','?','?','?'),";
        }
        $values = trim($values, ',');

        $this->db->query(
            "INSERT INTO hotel (`id`, `name`, `zip_code`, `address`, `city`, `province`, `phone`, `email`)
            VALUES $values", $params
        );

        echo "Import done";
    }
}
