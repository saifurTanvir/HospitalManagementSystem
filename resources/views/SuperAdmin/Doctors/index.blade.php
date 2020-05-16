@extends('SuperAdminLayouts.app')

@section('content')

    <table class="table table-striped">
        <h1>Total Doctors <span class="badge badge-info">{{count($doctors)}}</span></h1>

        <thead>
        <tr>
            <th>Doctor Name</th>
            <th>Phone </th>
            <th>Department</th>
            <th style="text-align: center;">Action</th>
        </tr>
        </thead>
               "Doctors: " {{$doctors->count()}}

            <tbody>
            @foreach ($doctors as $doctor)
                <tr>

                    <td><a href="{{route('superAdmin.doctor.show', $doctor->DoctorId)}}">{{$doctor->Name}}</a></td>
                    <td>{{$doctor->Phone}}</td>
                    <td>{{$doctor->Department}}</td>
                    <td style="text-align: center;">
                        <a href="{{route('superAdmin.doctor.edit', $doctor->DoctorId)}}" class="btn btn-primary">Edit</a>
                        <a href="{{route('superAdmin.doctor.workingHours', $doctor->DoctorId)}}" class="btn btn-primary">Working Hours</a>
                        <a href="#" class="btn btn-primary">Block</a>
                    </td>

                </tr>
            @endforeach
            <tr><td>{{ $doctors->links() }}</td></tr>
            </tbody>





    </table>
@endsection
