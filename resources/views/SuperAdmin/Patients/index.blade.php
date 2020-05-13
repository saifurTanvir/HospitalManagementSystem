@extends('SuperAdminLayouts.app')

@section('content')

    <table class="table table-striped">
        <thead>
        <tr>
            <th>Name </th>
            <th>Contact</th>
            <th>Register Date</th>

            <th style="text-align: center;">Action</th>
        </tr>
        </thead>


            <tbody>
            @foreach ($patients as $patient)
                <tr>

                    <td><a href="{{route('superAdmin.patient.show', $patient->patientId)}}">{{$patient->name}}</a></td>
                    <td>{{$patient->contact}}</td>
                    <td>{{$patient->registerDate}}</td>
                    <td style="text-align: center;">
                        <a href="{{route('superAdmin.patient.accounts.index', $patient->patientId)}}" class="btn btn-primary">Accounts</a>
                        <a href="#" class="btn btn-primary">Medical History</a>
                        <a href="#" class="btn btn-primary">Tests</a>
                    </td>

                </tr>
            @endforeach
            <tr><td>{{ $patients->links() }}</td></tr>
            </tbody>





    </table>
@endsection
