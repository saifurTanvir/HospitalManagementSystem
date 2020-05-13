@extends('SuperAdminLayouts.app')

@section('content')

    <table class="table table-striped">
        <thead>
        <tr>
            <th>Name </th>
            <th>Contact</th>
            <th>Gender</th>
            <th>Age</th>
            <th>Type</th>
            <th>Register</th>

            <th style="text-align: center;">Action</th>
        </tr>
        </thead>


            <tbody>
            @foreach ($patients as $patient)
                <tr>

                    <td><a href="">{{$patient->name}}</a></td>
                    <td>{{$patient->contact}}</td>
                    <td>{{$patient->gender}}</td>
                    <td>{{$patient->age}}</td>
                    <td>{{$patient->type}}</td>
                    <td>{{$patient->registerDate}}</td>
                    <td style="text-align: center;">
                        <a href="" class="btn btn-primary">Edit</a>
                        <a href="#" class="btn btn-primary">Block</a>
                    </td>

                </tr>
            @endforeach
            <tr><td>{{ $patients->links() }}</td></tr>
            </tbody>





    </table>
@endsection
