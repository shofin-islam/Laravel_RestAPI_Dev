<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    public function assignto(){
//        return $this->belongsTo(Requests::class);
        return $this->hasMany(Assign::class,'AssignTo');
    }
    public function assignedby(){
//        return $this->belongsTo(Requests::class);
        return $this->hasMany(Assign::class,'AssignedBy');
    }
    
    protected $hidden = [
        'created_at', 'updated_at',
    ];
}
