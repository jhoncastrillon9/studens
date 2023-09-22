@extends('layouts.app')

@section('content')
    <h1>Categories</h1>

    <!-- Lista de categorías -->
    <ul>
        @foreach ($categories as $category)            
            <li>{{ $category->id }} - {{ $category->name }}</li>
        @endforeach
    </ul>
@endsection