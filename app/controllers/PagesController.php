<?php

class PagesController extends BaseController {
    
    public function home() {
        $name = 'John';
        return View::make('test')->with('name', $name);
    }
    
}
