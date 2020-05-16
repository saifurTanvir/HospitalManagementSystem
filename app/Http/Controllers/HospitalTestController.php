<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\HospitalTest;

class HospitalTestController extends Controller
{
    public function index(){
        $tests = HospitalTest::paginate(5);
        return view('SuperAdmin.Tests.index', compact('tests'));
    }
    public function edit($testId){
        $test = HospitalTest::where('Id', $testId)->first();
        return view('SuperAdmin.Tests.edit', compact('test'));
    }
    public function update($testId){
        request()->validate([
            'cost' => 'required|numeric'
        ]);

        $test = HospitalTest::where('Id', $testId)->first();
        $test->testCost = request()->cost;
        $test->save();
        //dd($test->testCost);

        request()->session()->flash('testUpdate','Update Success!');
        
        return redirect()->route('superAdmin.HospitalTests');

    }
}
