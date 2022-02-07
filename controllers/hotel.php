<?php

class HotelController
{
    private $loader;
    private $db;
    private $mailer;
    private $config;

    public function __construct() {
        $this->loader = new Loader();
        $this->db = new Database();
        $this->mailer = new Mailer();
        $this->config = new Config();
    }

    public function index()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $data['hotels'] = $this->db->query(
                "SELECT * FROM hotel WHERE
                    `name` LIKE '%?%' OR
                    `zip_code` LIKE '%?%' OR
                    `address` LIKE '%?%' OR
                    `city` LIKE '%?%' OR
                    `province` LIKE '%?%' OR
                    `phone` LIKE '%?%' OR
                    `email` LIKE '%?%'
                    ",
                [
                    $_POST['search'],
                    $_POST['search'],
                    $_POST['search'],
                    $_POST['search'],
                    $_POST['search'],
                    $_POST['search'],
                    $_POST['search']
                ]
            );
        }
        else{
            $data['hotels'] = $this->db->query("SELECT * FROM hotel");
        }
        $this->loader->view('default', $data);
    }

    public function details(string $hotelId)
    {
        $hotel = $this->db->row("SELECT * FROM hotel WHERE id = '?'", [$hotelId]);

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $data = [
                'fullname' => $_POST['firstname'] . ' ' . $_POST['insertion'] . ' ' . $_POST['lastname'],
                'hotel' => $hotel['name'],
                'mailaddress' => $_POST['email'],
                'phone' => $_POST['phone'],
                'question' => $_POST['question']
            ];
            $message = $this->loader->cleanView('mail/question', $data, true);
            $this->mailer->mail(
                $this->config->defaultFrom,
                MAILADDRESS,
                'Inkomende vraag aan ' . $hotel['name'],
                $message
            );
            unset($data);
            $data['mailsent'] = true;
        }

        $data['hotel'] = $hotel;
        $this->loader->view('details', $data);
    }
}
