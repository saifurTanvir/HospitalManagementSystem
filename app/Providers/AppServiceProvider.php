<?php

namespace App\Providers;

use App\Doctor;
use App\PatientlistMaster;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer(['SuperAdminLayouts.*'], function($view){

            $view->with('departments', Doctor::select('Department')->distinct()->orderBy('Department')->get());

        });
    }
}
