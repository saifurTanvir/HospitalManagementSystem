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
