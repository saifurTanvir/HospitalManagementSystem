@extends('SuperAdminLayouts.app')

@section('content')
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">Doctor Name</th>
            <th scope="col">Patient Name</th>
            <th scope="col">BookingDate</th>
            <th scope="col">Appointment Date</th>
        </tr>
        </thead>
        <tbody>
        @foreach($appointments as $appointment)
            <tr>
                <th>
                    <a href="{{route('superAdmin.doctor.show', $appointment->drId)}}">
                        {{$appointment->drName}}
                    </a>
                </th>
                <td>
                    <a href="">
                        {{$appointment->patientName}}
                    </a>
                </td>
                <td>{{$appointment->bookingDate}}</td>
                <td>{{$appointment->appointmentDate}}</td>

            </tr>
        @endforeach


        </tbody>
    </table>

@endsection
