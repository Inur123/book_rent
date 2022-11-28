@extends('layouts.mainlayouts')

@section('title','Delete Writer')

@section('content')

<h2 class="mt-3">Are you sure to delete Writer {{ $writer->name }} ?</h2>
<div class="mt-3">
    <a href="/writer-destroy/{{ $writer->slug }}" class="btn btn-danger me-3">Sure</a>
    <a href="/writers" class="btn btn-info">Cancel</a>
</div>

@endsection