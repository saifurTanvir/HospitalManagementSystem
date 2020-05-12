<?php

namespace App\Http\Controllers;

use App\Doctor;
use App\SuperAdmin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use function PHPUnit\Framework\StaticAnalysis\HappyPath\AssertIsArray\consume;

class SuperAdminController extends Controller
{
    public function index(){
    	return view('SuperAdmin.index', compact('departments'));
    }
}
