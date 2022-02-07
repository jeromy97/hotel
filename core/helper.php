<?php

function site_url($uri = ''){
    return $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] . '/' . $uri;
}

function esc($string){
    return htmlspecialchars($string);
}