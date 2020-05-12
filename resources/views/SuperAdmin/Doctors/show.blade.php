@extends('SuperAdminLayouts.app')

@section('content')
    <div class="row">
        <div class="col-sm-8">
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
                                {{$doctor->VisitingFee}}
                            </td>
                        </tr>

                        <tr>
                            <td>Comission (%)</td>
                            <td>
                                {{$doctor->Commission}}
                            </td>
                        </tr>

                        <tr>
                            <td>Closing Day</td>
                            <td> {{$doctor->ClosingDay}} </td>
                        </tr>

                        <tr>
                            <td>InTotal Comission</td>
                            <td><text>250000</text></td>
                        </tr>

                        <tr>
                            <td>Total Patient Checked</td>
                            <td><text>2500</text></td>
                        </tr>
                        <!-- <tr>
                          <td colspan="2">
                            <center>
                              <input type="submit" class="btn btn-warning" value="Edit Profile">
                            </center>
                          </td>
                        </tr> -->

                    </table>

                    <div class="container bg card">
                        <center style="color:green;">
                            Monthly Information
                        </center>
                        <table width="100%" class="table table-hover">
                            <tr>
                                <td>Select Month</td>
                                <td>
                                    <input type="date" class="form-control" name="date">
                                </td>
                                <td>
                                    <input type="submit" class="btn btn-info" value="Go">
                                </td>
                            </tr>

                            <tr>
                                <td>Patient Checked</td>
                                <td>
                                    <text name="monthPathientChecked">25</text>
                                </td>
                            </tr>

                            <tr>
                                <td>Tests Referred</td>
                                <td>
                                    <text name="monthPathientChecked">93</text>
                                </td>
                            </tr>

                            <tr>
                                <td>Comissions</td>
                                <td>
                                    <text name="monthPathientChecked">25365</text>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <center>
                                        <a href="" class="btn btn-dark">Edit Doctor</a>
                                    </center>
                                </td>
                            </tr>

                        </table>
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
