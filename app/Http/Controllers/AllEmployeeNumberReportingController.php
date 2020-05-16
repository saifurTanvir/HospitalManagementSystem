<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Employee;
use App\Doctor;
use App\PatientlistMaster;
use App\HospitalTest;
use App\Http\Controllers\SplQueue;

class AllEmployeeNumberReportingController extends Controller
{
    public function index(){
        $employees = Employee::all()->count();
        $manager = Employee::where('designation', 'Manager')->count();
        $hr = Employee::where('designation', 'HR')->count();
        $reciptionist = Employee::where('designation', 'Receiptionist')->count();
        
        
        $doctors = Doctor::all()->count();
        $heart = Doctor::where('Department', 'Heart')->count();
        $neourology = Doctor::where('Department', 'Neourology')->count();
        $cardiology = Doctor::where('Department', 'Cardiology')->count();
        $dental = Doctor::where('Department', 'Dental')->count();


        $patients = PatientlistMaster::all()->count();
        $male = PatientlistMaster::where('gender', 'Male')->count();
        $female = PatientlistMaster::where('gender', 'Female')->count();
        $indoor = PatientlistMaster::where('type', 'Indoor')->count();
        $outdoor = PatientlistMaster::where('type', 'Outdoor')->count();

        $tests = HospitalTest::all()->count();

        $employeeList = [$employees, $manager, $hr, $reciptionist];
        $doctorList = [$doctors, $heart, $neourology, $cardiology, $dental];
        $patientList = [$patients, $male, $female, $indoor, $outdoor];

        return view('SuperAdmin.Reportings.index', compact('employeeList', 'doctorList', 'patientList', 'tests'));
        

    }
}
