@extends('SuperAdminLayouts.app')

@section('content')
    <div class="alert alert-success" role="alert">
                {{session('workingHour')}}
                {{session('workingHourDelete')}}
            </div>
    <table class="table table-striped">

        <thead>
        <tr>
            <th>Doctor Name</th>
            <th>Day </th>
            <th>Shift</th>
            <th>Time</th>
            <th style="text-align: center;">Action</th>
        </tr>
        </thead>


            <tbody>
            @foreach ($times as $time)
                <tr>

                    <td>{{$time->DrName}}</td>
                    <td>{{$time->DayName}}</td>
                    <td>{{$time->Shift}}</td>
                    <td>{{$time->TimeDuration}}</td>
                    <td style="text-align: center;">
                        <a href="{{route('superAdmin.doctor.editWorkingHours', [$time->DrId, $time->id])}}" class="btn btn-primary">Edit</a>
                        <a href="{{route('superAdmin.doctor.workingHours.delete', [$time->DrId, $time->id])}}" class="btn btn-primary">Delete</a>
                    </td>

                </tr>
            @endforeach
            <tr><td>{{ $times->links() }}</td></tr>
            </tbody>





    </table>
@endsection
