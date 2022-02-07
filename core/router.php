<?php
class Router
{
    public function __construct() {
        $this->loader = new Loader();
    }

    public function route()
    {
        $targetController = 'hotel';
        $targetFunction = 'index';
        $targetParams = [null];

        // Remove index.php from url
        $requestUri = $_SERVER['REQUEST_URI'];
        $fullUrl = $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] . $requestUri;
        $search = '/index.php';
        if (substr_count($fullUrl, $search)){
            header('Location: '. str_replace($search, '', $fullUrl));
            exit;
        }

        // Determine target controller and method based on uri
        $uriSegments = explode('/', trim($requestUri, '/'));
        if ($uriSegments[0] == 'index.php' || $uriSegments[0] == ''){
            unset($uriSegments[0]);
            $uriSegments = array_values($uriSegments);
        }
        $totalSegments = count($uriSegments);
        if ($totalSegments > 0) {
            $targetController = $uriSegments[0];
            if ($totalSegments > 1) $targetFunction = $uriSegments[1];
            if ($totalSegments > 2){
                unset($uriSegments[0]);
                unset($uriSegments[1]);
                $targetParams = array_values($uriSegments);
            }
        }
        
        // Load target controller
        $controller = $this->loader->controller($targetController);
        if ($controller === false || !method_exists($controller, $targetFunction)){
            http_response_code(404);
            exit('404 page not found');
        }
        $controller->{$targetFunction}(...$targetParams);
    }
}
