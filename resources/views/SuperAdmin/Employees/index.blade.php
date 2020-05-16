@extends('SuperAdminLayouts.app')

@section('content')
<div class="alert alert-success" role="alert">
        {{session('employeeDelete')}}
    </div>

    <table class="table table-striped">
        <h1>Total Employee <span class="badge badge-info">{{count($employees)}}</span></h1>

        <thead>
        <tr>
            <th>Employee Name</th>
            <th>Salary </th>
            <th>Phone</th>
            <th style="text-align: center;">Action</th>
        </tr>
        </thead>


            <tbody>
            @foreach ($employees as $employee)
                <tr>

                    <td><a href="{{route('superAdmin.employee.show', $employee->id)}}">{{$employee->name}}</a></td>
                    <td>{{$employee->monthlyfee}}</td>
                    <td>{{$employee->phone}}</td>
                    <td style="text-align: center;">
                        <a href="{{route('superAdmin.employee.edit', $employee->id)}}" class="btn btn-primary">Edit</a>
                        <a href="{{route('superAdmin.employee.delete', $employee->id)}}" class="btn btn-primary">Delete</a>
                    </td>

                </tr>
            @endforeach
            <tr><td>{{ $employees->links() }}</td></tr>
            </tbody>





    </table>
@endsection
