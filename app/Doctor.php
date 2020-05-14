<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Doctor extends Model
{
    protected $guarded = [];

    public $timestamps = false;
    protected $primaryKey = "DoctorId";

    public function patientAppoints(){
        return $this->hasMany(PatientAppointment::class);
    }
}
