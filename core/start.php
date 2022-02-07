<?php

class Start
{
    public $loader;

    public function __construct() {
        $this->loader = new Loader;
        $this->loader->load('controller');
        $this->loader->load('database');
        $this->loader->load('mailer');
        $router = $this->loader->load('router');
        $router->route();
    }
}
