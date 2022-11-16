<?php

class Savedpapers extends Model{
	public 	$valid =[];
    protected $table = "savedpaper";
    protected $allowedColumns = [
        'id',
        'user_id',
        'token',
        'user_token',
        'date',    
    ];
 }