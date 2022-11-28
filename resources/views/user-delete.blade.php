@extends('layouts.mainlayouts')

@section('title','Delete User')

@section('content')

<h2 class="mt-3">Are you sure to delete user {{ $user->username }} ?</h2>
<div class="mt-3">
    <a href="/user-destroy/{{ $user->slug }}" class="btn btn-danger me-3">Sure</a>
    <a href="/users" class="btn btn-info">Cancel</a>
</div>

@endsection