<?php

namespace App\Http\Controllers;

use App\Doctor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DoctorController extends Controller
{
    public function index($department){
        $doctors = Doctor::where('Department', $department)->paginate(5);

        return view('SuperAdmin.Doctors.index', compact('doctors'));
    }

    public function show(Doctor $doctor){

        //dd($doctor);
        return view('SuperAdmin.Doctors.show', compact('doctor'));
    }
}
