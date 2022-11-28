@extends('layouts.mainlayouts')

@section('title','Writer')
    

@section('content')

<h1>Add New Writer</h1>
<div class="mt-3 w-50">
    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif

    <form action="writer-add" method="post">
        @csrf
        <div>
            <label for="name" class="form-label">Name</label>
            <input type="text" name="name" id="name" class="form-control" placeholder="Writer Name">
        </div>
        <div class="mt-2">
            <button class="btn btn-success" type="submit">Save</button>
        </div>
    </form>
</div>
@endsection 