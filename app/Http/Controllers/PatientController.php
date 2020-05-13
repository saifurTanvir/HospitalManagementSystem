<?php

namespace App\Http\Controllers;

use App\PatientlistMaster;
use Illuminate\Http\Request;

class PatientController extends Controller
{
    public function type($type){
        $patients = PatientlistMaster::where('type',$type)->orderBy('name')->paginate(5);
        return view('SuperAdmin.Patients.index', compact('patients'));
    }

    public function gender($gender){
        $patients = PatientlistMaster::where('gender',$gender)->orderBy('name')->paginate(5);
        return view('SuperAdmin.Patients.index', compact('patients'));
    }

    public function age($min, $max){
        $patients = PatientlistMaster::where('age', '>=', $min)->where('age', '<=', $max)->orderBy('name')->paginate(5);
        return view('SuperAdmin.Patients.index', compact('patients'));
    }

    public function show($patient){
        $patient = PatientlistMaster::where('patientId', $patient)->get();
        //dd($patient[0]->name);
        return view('SuperAdmin.Patients.show', compact('patient'));
    }
}
