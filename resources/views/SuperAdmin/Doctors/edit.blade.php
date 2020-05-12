@extends('SuperAdminLayouts.app')

@section('content')
    <form method="post" >
        @method('PATCH')
        @csrf
        <div class="form-group">
            <label for="visitingFee">Visiting Fee</label>
            <input type="text" class="form-control" name="visitingFee" id="visitingFee" value="{{$doctor->VisitingFee}}" placeholder="Enter Visiting Fee">
        </div>
        <textiv class="form-group">
            <label for="commission">Email address</label>
            <input type="text" class="form-control" name="commission" id="commission" value="{{$doctor->Commission}}" placeholder="Enter percentage of commission">
        </textiv>
        <div class="form-group">
            <label for="Closing Day(s)">Closing Day(s)</label>
            <input type="text" class="form-control" name="closingDay" id="closingDay" value="{{$doctor->ClosingDay}}" placeholder="Enter Closing Days">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
@endsection
