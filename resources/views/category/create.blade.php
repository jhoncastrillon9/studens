@extends('layouts.app')

@section('content')
<h1 class="display-4">Create Category</h1>

<!-- Formulario de creación -->
<form action="{{ route('categories.store') }}" method="POST" class="mt-4">
    @csrf
    @include('category._form')
    <button type="submit" class="btn btn-primary">Create</button>
</form>

@endsection