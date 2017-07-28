<?php

namespace App\Model\admin;

use Illuminate\Database\Eloquent\Model;

class role extends Model
{
    public function permissions()
    {
    	return $this->belongsToMany('App\Model\admin\Permission');
    }
}
