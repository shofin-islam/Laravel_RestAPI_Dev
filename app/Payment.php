<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    public function JobRequest(){
        return $this->hasOne(JobRequest::class,'PaymentMethod'); //brand is foreign key inside JobRequest table 
    }

    public function billing(){
        return $this->hasOne(Billing::class,'payment_id'); 
    }
}
