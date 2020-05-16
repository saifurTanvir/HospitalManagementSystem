@extends('SuperAdminLayouts.app')

@section('content')
        <center>
        <form method="post" >
            @method('DELETE')
            @csrf
            
            <div class='text text-danger'>
                    After Delete It's Can't Be Reload!
                </div>
            <button type="submit" class="btn btn-primary">Delete</button>
        </form>
        </center>
@endsection
