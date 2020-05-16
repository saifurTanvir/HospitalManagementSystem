@extends('SuperAdminLayouts.app')

@section('content')

    <div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active">
        Available Tests
    </a>
    <a href="#" class="list-group-item list-group-item-action"><h1>Total Test:  <span class="badge badge-info">{{$tests}}</span></h1></a>
    
    </div>
    <hr>


    <div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active">
        EMPLOYEES
    </a>
    <a href="#" class="list-group-item list-group-item-action"><h1>Total Employee:  <span class="badge badge-info">{{$employeeList[0]}}</span></h1></a>
    <a href="#" class="list-group-item list-group-item-action"><h1>Manager  Department:  <span class="badge badge-info">{{$employeeList[1]}}</span></h1></a>
    <a href="#" class="list-group-item list-group-item-action"><h1>HR  Department:  <span class="badge badge-info">{{$employeeList[2]}}</span></h1></a>
    <a href="#" class="list-group-item list-group-item-action "><h1>Reciptionist  Department:  <span class="badge badge-info">{{$employeeList[3]}}</span></h1></a>
    </div>
    <hr>


    <div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active">
        DOCTORS
    </a>
    <a href="#" class="list-group-item list-group-item-action"><h1>Total Doctor:  <span class="badge badge-info">{{$doctorList[0]}}</span></h1></span></h1></a>
    <a href="#" class="list-group-item list-group-item-action"><h1>Heart Department:  <span class="badge badge-info">{{$doctorList[1]}}</span></h1></span></h1></a>
    <a href="#" class="list-group-item list-group-item-action"><h1>Neourology Department:  <span class="badge badge-info">{{$doctorList[2]}}</span></h1></span></h1></a>
    <a href="#" class="list-group-item list-group-item-action "><h1>Cardiology Department:  <span class="badge badge-info">{{$doctorList[3]}}</span></h1></span></h1></a>
    <a href="#" class="list-group-item list-group-item-action "><h1>Dental Department:  <span class="badge badge-info">{{$doctorList[4]}}</span></h1></span></h1></span></h1></a>
    </div>
    <hr>

    <div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active">
        PATIENTS
    </a>
    <a href="#" class="list-group-item list-group-item-action"><h1>Total Patient:  <span class="badge badge-info">{{$patientList[0]}}</span></h1></span></h1></span></h1></a>
    <a href="#" class="list-group-item list-group-item-action"><h1>Male:  <span class="badge badge-info">{{$patientList[1]}}</span></h1></span></h1></span></h1></a>
    <a href="#" class="list-group-item list-group-item-action"><h1>Female:  <span class="badge badge-info">{{$patientList[2]}}</span></h1></span></h1></span></h1></a>
    <a href="#" class="list-group-item list-group-item-action "><h1>Indoor:  <span class="badge badge-info">{{$patientList[3]}}</span></h1></span></h1></span></h1></a>
    <a href="#" class="list-group-item list-group-item-action "><h1>Outdoor:  <span class="badge badge-info">{{$patientList[4]}}</span></h1></span></h1></span></h1></span></h1></a>
    </div>




    
@endsection
