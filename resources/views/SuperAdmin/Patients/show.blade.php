@extends('SuperAdminLayouts.app')

@section('content')
    <div class="row">
        <div class="col-sm-8">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{$patient[0]->name}}'s Profile</h6>
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
                                {{$patient[0]->patientId}}
                            </td>
                        </tr>
                        <tr>
                            <td>Name</td>
                            <td>
                                {{$patient[0]->name}}
                            </td>
                        </tr>
                        <tr>
                            <td>Contact</td>
                            <td>
                                {{$patient[0]->contact}}
                            </td>
                        </tr>
                        <tr>
                            <td>Gender</td>
                            <td>
                                {{$patient[0]->gender}}
                            </td>
                        </tr>
                        <tr>
                            <td>Age</td>
                            <td>
                                {{$patient[0]->age}}
                            </td>
                        </tr>
                        <tr>
                            <td>Type </td>
                            <td>
                                {{$patient[0]->type}}
                            </td>
                        </tr>
                        <tr>
                            <td>Register Date</td>
                            <td>
                                {{$patient[0]->registerDate}}
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
