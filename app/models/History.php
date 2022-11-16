<?php
/**
 * Counter model
 */



 class History extends Model{
	public 	$valid =[];
    protected $table = "history";
    protected $allowedColumns = [
        'id',
        'user_id',
        'token',
        'user_token',
        'date',    
    ];

    public function validate($data){
        $this->valid=[];

        if($this->where(['token'=>$_POST['token']['token']])){
            $this->update($_POST['user_id'],$_POST);
            return true;
          }
        return false;
    }

 }