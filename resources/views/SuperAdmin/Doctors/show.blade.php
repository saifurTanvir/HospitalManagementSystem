@extends('SuperAdminLayouts.app')

@section('content')
    <div class="row">
        <div class="col-sm-8">
            <div class="alert alert-success" role="alert">
                {{session('editSuccess')}}
            </div>
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Dr.{{$doctor->Name}}'s, Profile Information</h6>
                </div>
                <div class="card-body">
                    <table width="80%" class="table table-hover">
                        <tr>
                            <td colspan="2" style="color:green;">
                                <center>
                                    Personal Information
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>Doctor ID</td>
                            <td>
                                {{$doctor->DoctorId}}
                            </td>
                        </tr>

                        <tr>
                            <td>Full Name</td>
                            <td>
                                {{$doctor->Name}}
                            </td>
                        </tr>

                        <tr>
                            <td>DOB</td>
                            <td>
                                {{$doctor->DOB}}
                            </td>
                        </tr>

                        <tr>
                            <td>Gender</td>
                            <td>
                                {{$doctor->Gender}}
                            </td>
                        </tr>

                        <tr>
                            <td>Phone</td>
                            <td>
                                {{$doctor->Phone}}
                            </td>
                        </tr>

                        <tr>
                            <td>Emergency</td>
                            <td>
                                {{$doctor->Emergency}}
                            </td>
                        </tr>

                        <tr>
                            <td>Email</td>
                            <td>
                                {{$doctor->Email}}
                            </td>
                        </tr>

                        <tr>
                            <td>Address</td>
                            <td>
                                {{$doctor->Address}}
                            </td>
                        </tr>
                        <tr class="thead-dark">
                            <td colspan="2" style="color:green;">
                                <center>
                                    Institutional Information
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>Department</td>
                            <td>
                                {{$doctor->Department}}
                            </td>
                        </tr>


                        <tr>
                            <td>Specialist</td>
                            <td> {{$doctor->Specialist}} </td>
                        </tr>

                        <tr>
                            <td>Visiting Fee</td>
                            <td>
                                {{$doctor->VisitingFee}} Taka
                            </td>
                        </tr>

                        <tr>
                            <td>Comission (%)</td>
                            <td>
                                {{$doctor->Commission}} %
                            </td>
                        </tr>

                        <tr>
                            <td>Closing Day</td>
                            <td> {{$doctor->ClosingDay}} </td>
                        </tr>



                    </table>

                    <div class="container bg card">
                        <center>
                            <a class="btn btn-dark" href="{{route('superAdmin.doctor.edit', $doctor->DoctorId)}}">
                                Edit Doctor
                            </a>
                        </center>
                    </div>
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
                        <img class="rounded-circle z-depth-2" height="200px" width="200px" src="/uploads/{{$doctor->ProfilePicture}}">
                    </center>
                </div>
            </div>
        </div>
@endsection
