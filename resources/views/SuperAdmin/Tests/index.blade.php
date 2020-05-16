@extends('SuperAdminLayouts.app')

@section('content')
    <div class="alert alert-success" role="alert">
        {{session('testUpdate')}}
    </div>
    <table class="table table-striped">
        <h1>Total Tests <span class="badge badge-info">{{count($tests)}}</span></h1>
        <thead>
        <tr>
            <th>Test Name </th>
            <th>Neak Name</th>
            <th>Initiate Date</th>
            <th>Cost</th>

            <th style="text-align: center;">Action</th>
        </tr>
        </thead>


            <tbody>
            @foreach ($tests as $test)
                <tr>

                    <td>{{$test->testName}}</td>
                    <td>{{$test->testShortName}}</td>
                    <td>{{$test->addingDate}}</td>
                    <td>{{$test->testCost}}</td>
                    <td style="text-align: center;">
                        <a href="{{route('superAdmin.hospitalTest.edit', $test->Id)}}" class="btn btn-primary">Edit</a>
                        <a href="" class="btn btn-primary">Temp Delete</a>
                    </td>

                </tr>
            @endforeach
            <tr><td>{{ $tests->links() }}</td></tr>
            </tbody>





    </table>
@endsection
