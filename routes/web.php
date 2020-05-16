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

Route::get('/superAdmin', 'AllEmployeeNumberReportingController@index');
Route::get('/superAdmin/doctors/departments/{department}', 'DoctorController@index')
    ->name('superAdmin.doctor.index')->middleware('auth');
Route::get('superAdmin/doctors/doctor/{doctor}', 'DoctorController@show')
    ->name('superAdmin.doctor.show')->middleware('auth');
Route::get('/superAdmin/Doctors/{doctor}/edit', 'DoctorController@edit')
    ->name('superAdmin.doctor.edit')->middleware('auth');
Route::patch('/superAdmin/Doctors/{doctor}/edit', 'DoctorController@update')->middleware('auth');
Route::get('/superAdmin/doctor/workingHours/{doctorId}', 'DoctorController@workingHours')
    ->name('superAdmin.doctor.workingHours')->middleware('auth');
Route::get('/superAdmin/doctor/workingHours/edit/{doctorId}/{timeId}', 'DoctorController@editWorkingHours')
    ->name('superAdmin.doctor.editWorkingHours')->middleware('auth');
Route::patch('/superAdmin/doctor/workingHours/edit/{doctorId}/{timeId}', 'DoctorController@updateWorkingHours')->middleware('auth');
Route::get('/superAdmin/doctor/eorkingHours/delete/{doctorId}/{timeId}', 'DoctorController@deleteWorkingHours')
    ->name('superAdmin.doctor.workingHours.delete')->middleware('auth');
Route::delete('/superAdmin/doctor/eorkingHours/delete/{doctorId}/{timeId}', 'DoctorController@destroyWorkingHours')->middleware('auth');

Route::get('/superAdmin/patients/type/{type}', 'PatientController@type')
    ->name('superAdmin.patients.type')->middleware('auth');

Route::get('/superAdmin/patients/gender/{gender}', 'PatientController@gender')
    ->name('superAdmin.patients.gender')->middleware('auth');

Route::get('/superAdmin/patients/age/{min}/{max}', 'PatientController@age')
    ->name('superAdmin.patients.age')->middleware('auth');
Route::get('superAdmin/patients/patient/{patient}', 'PatientController@show')
    ->name('superAdmin.patient.show')->middleware('auth');
Route::get('/superAdmin/patient/accounts/{patientId}', 'PatientAccountsController@index')
    ->name('superAdmin.patient.accounts.index')->middleware('auth');
Route::get('/superAdmin/patient/accounts/show/{invoiceNo}', 'PatientAccountsController@show')
    ->name('superAdmin.patient.accounts.show')->middleware('auth');
Route::get('/superAdmin/patient/accounts/discount/{discount}', 'PatientAccountsController@edit')
    ->name('superAdmin.patient.accounts.edit')->middleware('auth');
Route::patch('/superAdmin/patient/accounts/discount/{invoiceNo}', 'PatientAccountsController@update')->middleware('auth');

Route::get('/superAdmin/patients/medicalHistory/patient/{patientId}', 'PatientMedicalHistoryController@index')
    ->name('superAdmin.medicalHistory.patient')->middleware('auth');
Route::get('/superAdmin/patient/tests/{patientId}', 'PatientTestController@index')
    ->name('superAdmin.patient.tests')->middleware('auth'); 

Route::get('/superAdmin/hospitalTests', 'HospitalTestController@index')
    ->name('superAdmin.HospitalTests')->middleware('auth');
Route::get('/superAdmin/hospitalTests/test/edit/{testId}', 'HospitalTestController@edit')
    ->name('superAdmin.hospitalTest.edit')->middleware('auth');
Route::patch('/superAdmin/hospitalTests/test/edit/{testId}', 'HospitalTestController@update')->middleware('auth');
Route::get('/superAdmin/hospitalTests/test/delete/{testId}', 'HospitalTestController@delete')
    ->name('superAdmin.hospitalTests.delete')->middleware('auth');
Route::delete('/superAdmin/hospitalTests/test/delete/{testId}', 'HospitalTestController@destroy')->middleware('auth');

Route::get('/superAdmin/employees/departments/department/{department}', 'EmployeeController@index')
    ->name('superAdmin.employees.department')->middleware('auth');
Route::get('/superAdmin/employees/employee/{employeeId}', 'EmployeeController@show')
    ->name('superAdmin.employee.show')->middleware('auth');
Route::get('/superAdmin/employee/edit/{employeeId}', 'EmployeeController@edit')
    ->name('superAdmin.employee.edit')->middleware('auth');
Route::patch('/superAdmin/employee/edit/{employeeId}', 'EmployeeController@update')->middleware('auth');
Route::get('/superAdmin/employee/delete/{testId}', 'EmployeeController@delete')
    ->name('superAdmin.employee.delete')->middleware('auth');
Route::delete('/superAdmin/employee/delete/{testId}', 'EmployeeController@destroy')->middleware('auth');

Route::get('/superAdmin/reporting/allEmployee', 'AllEmployeeNumberReportingController@index')
    ->name('superAdmin.reporting/allEmployeeNumber')->middleware('auth');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
