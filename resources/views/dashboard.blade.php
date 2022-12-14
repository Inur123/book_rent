@extends('layouts.mainlayouts')

@section('title','Dashboard')
    
@section('content')


<h1>Wellcome, {{ Auth::user()->username }}</h1>

<div class="row mt-3">
    <div class="col-lg-3">
        <div class="card-data book bg-info">
            <div class="row">
                <div class="col-6"><i class="bi bi-journal-bookmark"></i></div>
                <div class="col-6 d-flex flex-column justify-content-center align-items-end">
                    <div class="card-desc">Books</div>
                    <div class="card-count">{{ $book_count }}</div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3">
        <div class="card-data category bg-success">
            <div class="row">
                <div class="col-6"><i class="bi bi-list-task"></i></div>
                <div class="col-6 d-flex flex-column justify-content-center align-items-end">
                    <div class="card-desc">Categories</div>
                    <div class="card-count">{{ $category_count }}</div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3">
        <div class="card-data user bg-warning">
            <div class="row">
                <div class="col-6 "><i class="bi bi-people"></i></div>
                <div class="col-6 d-flex flex-column justify-content-center align-items-end">
                    <div class="card-desc">Users</div>
                    <div class="card-count">{{ $user_count }}</div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3">
        <div class="card-data writer bg-danger">
            <div class="row">
                <div class="col-6"><i class="bi bi-person"></i></div>
                <div class="col-6 d-flex flex-column justify-content-center align-items-end">
                    <div class="card-desc">Writer</div>
                    <div class="card-count">{{ $writer_count }}</div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="mt-5">
    <h2>Rent Logs List</h2>
    <x-rent-log-table :rentlog='$rent_logs'/>
</div>


@endsection


