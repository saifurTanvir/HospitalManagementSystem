@extends('SuperAdminLayouts.app')

@section('content')

    <table class="table table-striped">
        <thead>
        <tr>
            <th>Doctor Name</th>
            <th>Phone </th>
            <th>Email</th>
            <th>Department</th>
            <th style="text-align: center;">Action</th>
        </tr>
        </thead>


            <tbody>
            @foreach ($doctors as $doctor)
                <tr>

                    <td><a href="{{route('superAdmin.doctor.show', $doctor->DoctorId)}}">{{$doctor->Name}}</a></td>
                    <td>{{$doctor->Phone}}</td>
                    <td>{{$doctor->Email}}</td>
                    <td>{{$doctor->Department}}</td>
                    <td style="text-align: center;">
                        <a href="#" class="btn btn-primary">Edit</a>
                        <a href="#" class="btn btn-primary">Block</a>
                    </td>

                </tr>
            @endforeach
            <tr><td>{{ $doctors->links() }}</td></tr>
            </tbody>





    </table>
@endsection
