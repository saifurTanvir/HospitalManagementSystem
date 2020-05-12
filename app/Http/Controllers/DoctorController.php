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
        return view('SuperAdmin.Doctors.show', compact('doctor'));
    }

    public function edit(Doctor $doctor){
        return view('SuperAdmin.Doctors.edit', compact('doctor'));
    }

    public function update(Doctor $doctor){
        $data = request()->validate([
           'visitingFee' => 'required|numeric',
           'commission' => 'required|numeric',
           'closingDay' => ''
        ]);

        $doctor->update($data);
        session()->flash('editSuccess', 'Update Success!');
        return redirect()->route('superAdmin.doctor.show', $doctor->DoctorId);
    }
}
