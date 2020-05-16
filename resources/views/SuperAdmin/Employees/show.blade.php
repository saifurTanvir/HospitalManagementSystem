@extends('SuperAdminLayouts.app')

@section('content')
    <div class="row">
        <div class="col-sm-8">
            <div class="alert alert-success" role="alert">
                {{session('employeeEdit')}}
            </div>
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{$employee->name}}'s Profile</h6>
                </div>
                <div class="card-body">
                    <table width="100%" class="table table-hover">
                        <tr>
                            <td colspan="2" style="color:green;">
                                <center>
                                    Personal Information
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>Name</td>
                            <td>
                                {{$employee->name}}
                            </td>
                        </tr>
                        <tr>
                            <td>DOB</td>
                            <td>
                                {{$employee->dob}}
                            </td>
                        </tr>
                        <tr>
                            <td>Gander</td>
                            <td>
                                {{$employee->gender}}
                            </td>
                        </tr>
                        <tr>
                            <td>Phone</td>
                            <td>
                                {{$employee->phone}}
                            </td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>
                                {{$employee->email}}
                            </td>
                        </tr>
                        <tr>
                            <td>designation</td>
                            <td>
                                {{$employee->designation}}
                            </td>
                        </tr>
                        <tr>
                            <td>Salarry</td>
                            <td>
                                {{$employee->monthlyfee}}
                            </td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td>
                                {{$employee->address}}
                            </td>
                        </tr>
                        <tr>
                            <td>Status</td>
                            <td>
                                {{$employee->ststus}}
                            </td>
                        </tr>
                        
                    </table>
                </div>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Profile Picture</h6>
                </div>
                <div class="card-body">
                    <center>
                        <img class="rounded-circle z-depth-2" height="200px" width="200px" src="">
                    </center>
                </div>
            </div>
        </div>


@endsection
