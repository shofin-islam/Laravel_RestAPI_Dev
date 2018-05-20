<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JobRequest extends Model
{
//     fillable is needed when update by api request
    protected $fillable=[
        'ServiceItem','ProblemDescription','DeviceQty','Brand','Phone','Address'
    ];
    public function assign(){
        return $this->hasOne(Assign::class,'job_request_id'); 
        // JobRequest(one) er primary key assign table a Onek bar (Many) ase "job_request_id" (foreign key) column hisabe
    }
    public function brand(){
        return $this->belongsTo(Brand::class,'Brand'); // 'Brand' is foreign key inside JobRequest         
    }
    public function paymentMethod(){
        return $this->belongsTo(Payment::class,'PaymentMethod'); // 'PaymentMethod' is foreign key inside JobRequest         
    }

    public function billing(){
        return $this->hasOne(Billing::class,'job_request_id'); 
    }
    
    protected $hidden = [
        'created_at', 'updated_at',
    ];
}
