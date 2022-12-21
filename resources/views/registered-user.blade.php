@extends('layouts.mainlayouts')

@section('title','Users')
    
@section('content')

<h1>User Registered User List</h1>
<form action="user-import" method="POST" enctype="multipart/form-data">
    @csrf
    <input type="file" name="file" class="form-control">
    <button class="btn btn-danger">Upload</button>
</form>

<div class="my-4 d-flex justify-content-end ">
    <a href="/users"class="btn btn-primary">Approve User List</a>
</div>


    <div class="my-5">
        <table class="table">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Username</th>
                    <th>Phone</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($registeredUsers as $item)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $item->username }}</td>    
                    <td>
                        @if ($item->phone)
                            {{ $item->phone }}
                        @else
                            -
                        @endif
                    </td>
                    <td>
                        <a href="/user-detail/{{ $item->slug }}">Detail</a>
                    </td>
                </tr>   
                @endforeach
            </tbody>
        </table>
        {{-- <div class="card-footer">
            {{ $users->links() }}
        </div> --}}
    </div>

@endsection