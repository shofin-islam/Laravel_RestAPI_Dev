<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    public function JobRequest(){
        return $this->hasOne(JobRequest::class,'Brand'); //brand is foreign key inside JobRequest table 
    }
}
