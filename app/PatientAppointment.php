<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PatientAppointment extends Model
{
    protected $guarded = [];

    public function doctor(){
        return $this->belongsTo(Doctor::class);
    }
}
