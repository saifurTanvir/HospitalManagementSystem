@extends('SuperAdminLayouts.app')

@section('content')
    <div class="row">
        <div class="col-sm-8">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{$patient->name}}'s Profile</h6>
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
                            <td>Patient Id</td>
                            <td>
                                {{$patient->patientId}}
                            </td>
                        </tr>
                        <tr>
                            <td>Name</td>
                            <td>
                                {{$patient->name}}
                            </td>
                        </tr>
                        <tr>
                            <td>Contact</td>
                            <td>
                                {{$patient->contact}}
                            </td>
                        </tr>
                        <tr>
                            <td>Gender</td>
                            <td>
                                {{$patient->gender}}
                            </td>
                        </tr>
                        <tr>
                            <td>Age</td>
                            <td>
                                {{$patient->age}}
                            </td>
                        </tr>
                        <tr>
                            <td>Type </td>
                            <td>
                                {{$patient->type}}
                            </td>
                        </tr>
                        <tr>
                            <td>Register Date</td>
                            <td>
                                {{$patient->registerDate}}
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
