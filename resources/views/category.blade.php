@extends('layouts.mainlayouts')

@section('title','Category')

@section('content')

<h1>Category List</h1>
<form action="{{ route('category.import') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <input type="file" name="file" class="form-control">
    <button class="btn btn-danger">Upload</button>
</form>
<div class=" mt-5 d-flex justify-content-end">
    <a href="{{ route('category.export') }}"class="btn btn-danger">Excel</a>
    <a href="category-deleted"class="btn btn-secondary me-3">View Delete Data</a>
    <a href="category-add"class="btn btn-primary">Add Data</a>
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
            @foreach ($categories as $item)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $item->name }}</td>
                    <td>{{ $item->slug }}</td>
                    <td>
                        <a href="category-edit/{{ $item->slug }}" class="btn btn-warning">edit</a>
                        <a href="category-delete/{{ $item->slug }}" class="btn btn-danger">delete</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <div class="card-footer">
        {{ $categories->links() }}
    </div>
</div>

@endsection