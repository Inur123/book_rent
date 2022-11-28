@extends('layouts.mainlayouts')

@section('title','Writer')

@section('content')

<h1>Writer List</h1>
<div class=" mt-5 d-flex justify-content-end">
    <a href="writer-deleted"class="btn btn-secondary me-3">View Delete Data</a>
    <a href="writer-add"class="btn btn-primary">Add Data</a>
</div>
<div class="mt-3">
    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif
</div>
<div class="my-3">
    <table class="table">
        <thead>
            <tr>
                <th>No.</th>
                <th>Name</th>
                <th>Slug</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($writers as $item)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $item->name }}</td>
                    <td>{{ $item->slug }}</td>
                    <td>
                        <a href="writer-edit/{{ $item->slug }}" class="btn btn-warning">edit</a>
                        <a href="writer-delete/{{ $item->slug }}"class="btn btn-danger">delete</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>

@endsection