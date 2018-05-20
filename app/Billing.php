<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Billing extends Model
{
    public function JobRequest(){
        return $this->belongsTo(JobRequest::class,'job_request_id'); 
    }
    
    public function Payment(){
        return $this->belongsTo(Payment::class,'payment_id'); 
    }

    protected $hidden = [
        'created_at', 'updated_at',
    ];
}
