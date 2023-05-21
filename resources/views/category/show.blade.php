@extends('layouts.app')

@section('content')
    <h1>{{ $category->name }}</h1>

    <p>{{ $category->description }}</p>
@endsection