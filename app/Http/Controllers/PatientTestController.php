<?php

namespace App\Http\Controllers;

use App\InvoiceDetail;
use Illuminate\Http\Request;

class PatientTestController extends Controller
{
    public function index($patientId){
        $tests = InvoiceDetail::where('patientId', $patientId)->paginate(5);
        return view('SuperAdmin.Patients.Tests.index', compact('tests'));
    }
}
