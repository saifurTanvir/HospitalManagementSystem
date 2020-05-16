<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Employee;

class EmployeeController extends Controller
{
    public function index($department){
        $employees = Employee::where('designation', $department)->orderBy('designation')->paginate(5);
        return view('SuperAdmin.Employees.index', compact('employees'));
    }

    public function show($employeeId){
        $employee = Employee::where('id', $employeeId)->first();
        return view('SuperAdmin.Employees.show', compact('employee'));
    }

    public function edit($employeeId){
        $employee = Employee::where('id', $employeeId)->first();
        return view('SuperAdmin.Employees.edit', compact('employee'));
    }

    public function update($employeeId){
        request()->validate([
            'salary' => 'required|numeric'
        ]);

        $employee = Employee::where('id', $employeeId)->first();
        $employee->monthlyfee = request()->salary;
        $employee->save();

        request()->session()->flash('employeeEdit','Update Success!');
        
        return redirect()->route('superAdmin.employee.show', $employee->id);
    }

    public function delete($employeeId){
        return view('SuperAdmin.Employees.delete');
    }

    public function destroy($employeeId){
        $employee = Employee::where('id', $employeeId)->first();
        $employee->delete();

        request()->session()->flash('employeeDelete','Delete Success!');
        
        return redirect()->route('superAdmin.employees.department', $employee->designation);
    }
}
