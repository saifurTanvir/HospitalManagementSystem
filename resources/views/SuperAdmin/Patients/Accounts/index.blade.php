@extends('SuperAdminLayouts.app')

@section('content')
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">Invoice No</th>
            <th scope="col">Invoice Date</th>
            <th scope="col">Patient Name</th>
            <th scope="col">Invoice Status</th>
        </tr>
        </thead>
        <tbody>
        @foreach($invoices as $invoice)
            <tr>
                <th>
                    <a href="{{route('superAdmin.patient.accounts.show', $invoice->invoiceNo)}}">
                        {{$invoice->invoiceNo}}
                    </a>
                </th>
                <td>{{$invoice->invoiceDate}}</td>
                <td>
                    <a href="{{route('superAdmin.patient.show', $invoice->patientId)}}">
                        {{$invoice->patientName}}
                    </a>
                </td>
                <td>{{$invoice->status}}</td>
            </tr>
        @endforeach


        </tbody>
    </table>

@endsection
