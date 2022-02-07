<?php

require BASE . 'core/helper.php';

class Loader
{
    public function load(string $class, string $directory = 'core')
    {
        $path =  BASE . $directory . '/' . $class . '.php';
        if (!file_exists($path)) return false;
        require_once $path;
        $className = ucfirst($class);
        return new $className;
    }

    public function controller(string $class)
    {
        $path =  BASE . 'controllers/' . $class . '.php';
        if (!file_exists($path)) return false;
        require_once $path;
        $className = ucfirst($class) . 'Controller';
        return new $className;
    }

    public function source(string $path, string $type = 'csv')
    {
        $path = BASE . 'sources/' . $path;
        if (!file_exists($path)) return false;
        $source = fopen($path, 'r');
        $csv = [];
        while (($data = fgetcsv($source, 0, ';')) !== false){
            $csv[] = $data;
        }
        fclose($source);
        return $csv;
    }

    public function view($path, $data = [], $return = false)
    {
        $headerPath = BASE . 'views/header.php';
        $path = BASE . 'views/pages/' . $path . '.php';
        $footerPath = BASE . 'views/footer.php';
        if (!file_exists($headerPath) || !file_exists($path) || !file_exists($footerPath)) return false;
        if ($return) ob_start();
        require $headerPath;
        require $path;
        require $footerPath;
        if ($return){
            $view = ob_get_clean();
            return $view;
        } 
    }

    /**
     * Loads a view without the header and footer
     *
     * @param string $path
     * @param array $data
     * @param boolean $return
     * @return void|string
     */
    public function cleanView(string $path, array $data = [], $return = false)
    {
        $path = BASE . 'views/pages/' . $path . '.php';
        if (!file_exists($path)) return false;
        if ($return) ob_start();
        require $path;
        if ($return){
            $view = ob_get_clean();
            return $view;
        } 
    }
}
