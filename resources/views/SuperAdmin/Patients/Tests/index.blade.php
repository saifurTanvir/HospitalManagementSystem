@extends('SuperAdminLayouts.app')

@section('content')
    <table class="table table-striped">
        <h1>Total Test <span class="badge badge-info">{{count($tests)}}</span></h1>
        <thead>
        <tr>
            <th scope="col">Invoice Date</th>
            <th scope="col">Test Name</th>
            <th scope="col">Test Cost</th>
        </tr>
        </thead>
        <tbody>
        @foreach($tests as $test)
            <tr>
                <th>
                    <a href="">
                        {{$test->invoiceDate}}
                    </a>
                </th>
                <td>{{$test->testName}}</td>

                <td>{{$test->testCost}}</td>
            </tr>
        @endforeach
        <tr><td>{{ $tests->links() }}</td></tr>

        </tbody>
    </table>

@endsection
