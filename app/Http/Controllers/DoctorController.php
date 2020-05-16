<?php

namespace App\Http\Controllers;

use App\AppointmentTimeMaster;
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

    public function workingHours($doctorId){
        $times = AppointmentTimeMaster::where('DrId', $doctorId)->paginate(5);
        return view('SuperAdmin.Doctors.workingHours', compact('times'));
    }

    public function editWorkingHours($doctorId, $timeId){
        $times = AppointmentTimeMaster::where('id', $timeId)->get();
        return view('SuperAdmin.Doctors.editWorkingHours', compact('times'));
    }

    public function updateWorkingHours($doctorId, $timeId){
        request()->validate([
            'day' => 'required',
            'shift' => 'required',
            'hours' => 'required'
        ]);

        $times = AppointmentTimeMaster::where('id', $timeId)->get();

        $times[0]->DayName = request()->day;
        $times[0]->Shift = request()->shift;
        $times[0]->TimeDuration = request()->hours;
        $times[0]->save();

        request()->session()->flash('workingHour','Update Success!');
        
        return redirect()->route('superAdmin.doctor.workingHours', $times[0]->DrId);

    }

    public function deleteWorkingHours($doctorId, $timeId){
        $times = AppointmentTimeMaster::where('id', $timeId)->get();
        return view('SuperAdmin.Doctors.deleteWorkingHours', compact('times'));
    }

    public function destroyWorkingHours($doctorId, $timeId){
        $times = AppointmentTimeMaster::where('id', $timeId)->get();
        $times[0]->delete();

        request()->session()->flash('workingHourDelete','Delete Success!');
        
        return redirect()->route('superAdmin.doctor.workingHours', $times[0]->DrId);
    }
}
