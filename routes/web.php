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
