<?php

namespace App\Http\Controllers;

use App\Doctor;
use App\PatientAppointment;
use Illuminate\Http\Request;

class PatientMedicalHistoryController extends Controller
{
    public function index($patientId){
       $appointments = PatientAppointment::where('patientId', $patientId)->paginate(5);
       return view('SuperAdmin.Patients.MedicalHistory.index', compact('appointments'));
    }
}
