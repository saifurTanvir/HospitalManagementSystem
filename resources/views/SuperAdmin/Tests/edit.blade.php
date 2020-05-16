@extends('SuperAdminLayouts.app')

@section('content')
    <div class="alert alert-success" role="alert">
        {{session('testUpdate')}}
    </div>
    <form method="post" >
        @method('PATCH')
        @csrf
        
        <div class="form-group">
            <label >Closing Day(s)</label>
            <input type="text" class="form-control" name="cost" id="" value="{{$test->testCost}}" >
            <div class='text text-danger'>
                    @error('cost')
                        {{$message}}
                    @enderror
                </div>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
@endsection
