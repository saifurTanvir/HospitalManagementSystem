@extends('SuperAdminLayouts.app')

@section('content')
        <form method="post" >
            @method('PATCH')
            @csrf
            
            <div class="form-group">
                <label>Salary</label>
                <input type="text" class="form-control" name="salary" value="{{$employee->monthlyfee}}" >
                <div class='text text-danger'>
                    @error('salary')
                        {{$message}}
                    @enderror
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
@endsection
