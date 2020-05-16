<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/superAdmin', 'SuperAdminController@index');
Route::get('/superAdmin/doctors/departments/{department}', 'DoctorController@index')
    ->name('superAdmin.doctor.index');
Route::get('superAdmin/doctors/doctor/{doctor}', 'DoctorController@show')
    ->name('superAdmin.doctor.show');
Route::get('/superAdmin/Doctors/{doctor}/edit', 'DoctorController@edit')
    ->name('superAdmin.doctor.edit');
Route::patch('/superAdmin/Doctors/{doctor}/edit', 'DoctorController@update');
Route::get('/superAdmin/doctor/workingHours/{doctorId}', 'DoctorController@workingHours')
    ->name('superAdmin.doctor.workingHours');
Route::get('/superAdmin/doctor/workingHours/edit/{doctorId}/{timeId}', 'DoctorController@editWorkingHours')
    ->name('superAdmin.doctor.editWorkingHours');
Route::patch('/superAdmin/doctor/workingHours/edit/{doctorId}/{timeId}', 'DoctorController@updateWorkingHours');
Route::get('/superAdmin/doctor/eorkingHours/delete/{doctorId}/{timeId}', 'DoctorController@deleteWorkingHours')
    ->name('superAdmin.doctor.workingHours.delete');
Route::delete('/superAdmin/doctor/eorkingHours/delete/{doctorId}/{timeId}', 'DoctorController@destroyWorkingHours');

Route::get('/superAdmin/patients/type/{type}', 'PatientController@type')
    ->name('superAdmin.patients.type');

Route::get('/superAdmin/patients/gender/{gender}', 'PatientController@gender')
    ->name('superAdmin.patients.gender');

Route::get('/superAdmin/patients/age/{min}/{max}', 'PatientController@age')
    ->name('superAdmin.patients.age');
Route::get('superAdmin/patients/patient/{patient}', 'PatientController@show')
    ->name('superAdmin.patient.show');
Route::get('/superAdmin/patient/accounts/{patientId}', 'PatientAccountsController@index')
    ->name('superAdmin.patient.accounts.index');
Route::get('/superAdmin/patient/accounts/show/{invoiceNo}', 'PatientAccountsController@show')
    ->name('superAdmin.patient.accounts.show');
Route::get('/superAdmin/patient/accounts/discount/{discount}', 'PatientAccountsController@edit')
    ->name('superAdmin.patient.accounts.edit');
Route::patch('/superAdmin/patient/accounts/discount/{invoiceNo}', 'PatientAccountsController@update');

Route::get('/superAdmin/patients/medicalHistory/patient/{patientId}', 'PatientMedicalHistoryController@index')
    ->name('superAdmin.medicalHistory.patient');
Route::get('/superAdmin/patient/tests/{patientId}', 'PatientTestController@index')
    ->name('superAdmin.patient.tests'); 

Route::get('/superAdmin/hospitalTests', 'HospitalTestController@index')
    ->name('superAdmin.HospitalTests');
Route::get('/superAdmin/hospitalTests/test/edit/{testId}', 'HospitalTestController@edit')
    ->name('superAdmin.hospitalTest.edit');
Route::patch('/superAdmin/hospitalTests/test/edit/{testId}', 'HospitalTestController@update');
Route::get('/superAdmin/hospitalTests/test/delete/{testId}', 'HospitalTestController@delete')
    ->name('superAdmin.hospitalTests.delete');
Route::delete('/superAdmin/hospitalTests/test/delete/{testId}', 'HospitalTestController@destroy');

Route::get('/superAdmin/employees/departments/department/{department}', 'EmployeeController@index')
    ->name('superAdmin.employees.department');
Route::get('/superAdmin/employees/employee/{employeeId}', 'EmployeeController@show')
    ->name('superAdmin.employee.show');
Route::get('/superAdmin/employee/edit/{employeeId}', 'EmployeeController@edit')
    ->name('superAdmin.employee.edit');
Route::patch('/superAdmin/employee/edit/{employeeId}', 'EmployeeController@update');
Route::get('/superAdmin/employee/delete/{testId}', 'EmployeeController@delete')
    ->name('superAdmin.employee.delete');
Route::delete('/superAdmin/employee/delete/{testId}', 'EmployeeController@destroy');
