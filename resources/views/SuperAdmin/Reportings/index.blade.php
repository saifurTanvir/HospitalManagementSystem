@extends('SuperAdminLayouts.app')

@section('content')

    <div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active">
        Available Tests
    </a>
    <a href="#" class="list-group-item list-group-item-action"><h5>Total Test:  <span class="badge badge-info">{{$tests}}</span></h5></a>
    
    </div>
    <hr>


    <div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active">
        EMPLOYEES
    </a>
    <a href="#" class="list-group-item list-group-item-action"><h5>Total Employee:  <span class="badge badge-info">{{$employeeList[0]}}</span></h5></a>
    <a href="{{route('superAdmin.employees.department', 'Manager')}}" class="list-group-item list-group-item-action"><h5>Manager  Department:  <span class="badge badge-info">{{$employeeList[1]}}</span></h5></a>
    <a href="{{route('superAdmin.employees.department', 'HR')}}" class="list-group-item list-group-item-action"><h5>HR  Department:  <span class="badge badge-info">{{$employeeList[2]}}</span></h5></a>
    <a href="{{route('superAdmin.employees.department', 'Receiptionist')}}" class="list-group-item list-group-item-action "><h5>Reciptionist  Department:  <span class="badge badge-info">{{$employeeList[3]}}</span></h5></a>
    </div>
    <hr>


    <div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active">
        DOCTORS
    </a>
    <a href="#" class="list-group-item list-group-item-action"><h5>Total Doctor:  <span class="badge badge-info">{{$doctorList[0]}}</span></h5></span></h5></a>
    <a href="{{route('superAdmin.doctor.index', 'Heart')}}" class="list-group-item list-group-item-action"><h5>Heart Department:  <span class="badge badge-info">{{$doctorList[1]}}</span></h5></span></h5></a>
    <a href="{{route('superAdmin.doctor.index', 'Neourology')}}" class="list-group-item list-group-item-action"><h5>Neourology Department:  <span class="badge badge-info">{{$doctorList[2]}}</span></h5></span></h5></a>
    <a href="{{route('superAdmin.doctor.index', 'Cardiology')}}" class="list-group-item list-group-item-action "><h5>Cardiology Department:  <span class="badge badge-info">{{$doctorList[3]}}</span></h5></span></h5></a>
    <a href="{{route('superAdmin.doctor.index', 'Dental')}}" class="list-group-item list-group-item-action "><h5>Dental Department:  <span class="badge badge-info">{{$doctorList[4]}}</span></h5></span></h5></span></h5></a>
    </div>
    <hr>

    <div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active">
        PATIENTS
    </a>
    <a href="#" class="list-group-item list-group-item-action"><h5>Total Patient:  <span class="badge badge-info">{{$patientList[0]}}</span></h5></span></h5></span></h5></a>
    <a href="{{route('superAdmin.patients.gender', 'Male')}}" class="list-group-item list-group-item-action"><h5>Male:  <span class="badge badge-info">{{$patientList[1]}}</span></h5></span></h5></span></h5></a>
    <a href="{{route('superAdmin.patients.gender', 'Female')}}" class="list-group-item list-group-item-action"><h5>Female:  <span class="badge badge-info">{{$patientList[2]}}</span></h5></span></h5></span></h5></a>
    <a href="{{route('superAdmin.patients.type', 'Indoor')}}" class="list-group-item list-group-item-action "><h5>Indoor:  <span class="badge badge-info">{{$patientList[3]}}</span></h5></span></h5></span></h5></a>
    <a href="{{route('superAdmin.patients.type', 'Outdoor')}}" class="list-group-item list-group-item-action "><h5>Outdoor:  <span class="badge badge-info">{{$patientList[4]}}</span></h5></span></h5></span></h5></span></h5></a>
    </div>




    
@endsection
