<?php

abstract class BaseController {

    protected $controllerName;
    protected $isPost = false;

    function __construct($controllerName) {
        $this->controllerName = $controllerName;
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $this->isPost = true;
        }
        
        $this->onInit();
    }

    public function onInit() {
        // Implement initializing logic in the subclasses
    }

    public function index() {
        // Implement the default action in the subclasses
    }
}
