@extends('layouts.mainlayouts')

@section('title','Edit Book')
    

@section('content')

<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<h1>Edit New Books</h1>

<div class="mt-3 w-50">
  <div class="my-2 d-flex justify-content-end">
    <a href="/books"class="btn btn-info">Back</a>
  </div>
    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif

    <form action="/book-edit/{{$book->slug}}" method="post" enctype="multipart/form-data">
        @csrf
        <div class="mb-2">
            <label for="code" class="form-label">Code</label>
            <input type="text" name="book_code" id="code" class="form-control" placeholder="Book Code" value="{{ $book->book_code }}">
        </div>
        <div class="mb-2">
            <label for="title" class="form-label">Title</label>
            <input type="text" name="title" id="title" class="form-control" placeholder="Book Title" value="{{ $book->title }}">
        </div>
        <div class="mb-2">
            <label for="image" class="form-label">Image </label>
            <input type="file" name="image" class="form-control" >
        </div>
        <div class="mb-3">
            <label for="currentImage" class="form-label" style="display: block">current Image</label>
                @if($book->cover!='')
                <img src="{{ asset('storage/cover/'.$book->cover) }}" alt="" width="150px">
            @else
                <img src="{{ asset('images/cover-polos.png') }}" alt="" width="150px">
            @endif
        </div>
        <div class="mb-2">
            <label for="category" class="form-label">Category</label>
            <select name="categories[]" id="category" class="form-control select-multiple" multiple>
                @foreach ($categories as $item)
                <option value="{{ $item->id }}">{{ $item->name }}</option>
                @endforeach
            </select>
        </div>
        <div class="mb-3">
            <label for="currentCategory">current Category</label>
            <ul>
                @foreach ($book->categories as $category)
                <li>{{ $category->name }}</li>
                @endforeach
            </ul>
        </div>
        <div class="mb-2">
            <label for="writer" class="form-label">Writer</label>
            <select name="writers[]" id="writer" class="form-control select-multiple">
                <option disabled selected value> -- select an writer -- </option>
                @foreach ($writers as $item)
                <option value="{{ $item->id }}">{{ $item->name }}</option>
                @endforeach
            </select>
        </div>
        <div class="mb-3">
            <label for="currentWriter">current Writer</label>
            <ul>
                @foreach ($book->writers as $writer)
                <li>{{ $writer->name }}</li>
                @endforeach
            </ul>
        </div>
        <div class="mt-2">
            <button class="btn btn-success" type="submit">Save</button>
        </div>
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>


<script>
    $(document).ready(function() {
    $('.select-multiple').select2();
});
</script>
@endsection 