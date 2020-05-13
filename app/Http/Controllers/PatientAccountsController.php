<?php

namespace App\Http\Controllers;

use App\InvoiceMaster;
use Illuminate\Http\Request;

class PatientAccountsController extends Controller
{
    public function index( $patientId){
        $invoices = InvoiceMaster::where('patientId', $patientId)->paginate(5);
        return view('SuperAdmin.Patients.Accounts.index', compact('invoices'));
    }

    public function show($invoiceNo){
        $invoice = InvoiceMaster::where('invoiceNo', $invoiceNo)->get();
        return view('SuperAdmin.Patients.Accounts.show', compact('invoice'));
    }

    public function edit($invoiceNo){
        $invoice = InvoiceMaster::where('invoiceNo', $invoiceNo)->get();
        return view('SuperAdmin.Patients.Accounts.edit', compact('invoice'));
    }

    public function update($invoiceNo){
        //dd(request()->discount, request()->netAmount);
        $invoice = InvoiceMaster::where('invoiceNo', $invoiceNo)->get();

        $data =request()->validate([
            'discount' => 'required|numeric',
            'netAmount' => 'required|numeric'
        ]);

        $invoice[0]->discount = request()->discount;
        $invoice[0]->netAmount = request()->netAmount;

        $invoice[0]->save();

        return redirect()->route('superAdmin.patient.accounts.show', $invoiceNo);
    }
}
