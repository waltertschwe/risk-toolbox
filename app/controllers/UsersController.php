<?php

class UsersController extends \BaseController {
    
    public $layout = 'layout.default';
    
    public function index() {
      
        $users = DB::table('users')->get();
        return View::make('users.index', array('users' => $users));
    }
    
    public function show($username) {
        
       $user = User::whereUsername($username)->first();
       return View::make('users.show', array('user' => $user));
        
    }
    
    public function create() {
        
    }
    
    public function store() {
        
    }
    
    public function edit() {
        
    }
    
    public function update() {
        
    }
    
    public function destroy() {
        
    }
    
    
}
