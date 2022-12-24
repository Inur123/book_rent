@extends('layouts.mainlayouts')

@section('title','Users')
    
@section('content')

<h1>Detail Buku</h1>


    <div class="mt-3">
    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif
    </div>

    <div class="my-2 w-25 ">
        <div class="mb-3">
            <label for="" class="form-label ">Code Book</label>
            <input type="text" class="form-control" readonly value="{{ $book->book_code }}" >
        </div>
        <div class="mb-3">
            <label for="" class="form-label ">Tittle</label>
            <input type="text" class="form-control" readonly value="{{ $book->title }}" >
        </div>
        <div class="mb-3">
            <label for="currentImage" class="form-label" style="display: block">Book Image</label>
                @if($book->cover!='')
                <img src="{{ asset('storage/cover/'.$book->cover) }}" alt="" width="150px">
            @else
                <img src="{{ asset('images/cover-polos.png') }}" alt="" width="150px">
            @endif
        </div>
        <div class="mb-3">
            <label for="currentCategory">Book Category</label>
            <ul>
                @foreach ($book->categories as $category)
                <li>{{ $category->name }}</li>
                @endforeach
            </ul>
        </div>
        <div class="mb-3">
            <label for="currentWriter">Book Writer</label>
            <ul>
                @foreach ($book->writers as $writer)
                <li>{{ $writer->name }}</li>
                @endforeach
            </ul>
        </div>

@endsection