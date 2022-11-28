@extends('layouts.mainlayouts')

@section('title','Profile')
    
@section('content')
<h1>Wellcome, {{ Auth::user()->username }}</h1>
<h3 class="text-center">Your Rent Logs</h3>
<x-rent-log-table :rentlog='$rent_logs'/>
@endsection