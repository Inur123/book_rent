@extends('layouts.mainlayouts')

@section('title','Delete Category')

@section('content')

<h2 class="mt-3">Are you sure to delete category {{ $category->name }} ?</h2>
<div class="mt-3">
    <a href="/category-destroy/{{ $category->slug }}" class="btn btn-danger me-3">Sure</a>
    <a href="/categories" class="btn btn-info">Cancel</a>
</div>

@endsection