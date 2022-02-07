<?php
define('BASE', './');
define('BASE_URL', $_SERVER['HTTP_HOST']);
define('MAILADDRESS', 'development@fletcher.nl');
define('TITLE', 'Fletcher Hotels');

error_reporting(0);
ini_set('display_errors', 0);

require_once 'core/loader.php';

$loader = new Loader();
$loader->load('start');