@extends('SuperAdminLayouts.app')

@section('content')
        <form method="post" >
            @method('PATCH')
            @csrf
            <div class="form-group">
                <label for="Day">Day</label>
                <input type="text" class="form-control" name="day" value="{{$times[0]->DayName}}" placeholder="Example: Friday">
                <div class='text text-danger'>
                    @error('day')
                        {{$message}}
                    @enderror
                </div>
            </div>
            <div class="form-group">
                <label for="Shift">Shift</label>
                <input type="text" class="form-control" name="shift" value="{{$times[0]->Shift}}" placeholder="Example: Morning">
                <div class='text text-danger'>
                    @error('shift')
                        {{$message}}
                    @enderror
                </div>
            </div>
            <div class="form-group">
                <label for="Time">Time</label>
                <input type="text" class="form-control" name="hours" value="{{$times[0]->TimeDuration}}" placeholder="Example: 07-00PM - 11:00PM">
                <div class='text text-danger'>
                    @error('hours')
                        {{$message}}
                    @enderror
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
@endsection
