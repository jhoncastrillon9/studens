@extends('layouts.app')

@section('content')
    <h1>Edit Category</h1>

    <!-- Formulario de edición -->
    <form action="{{ route('categories.update', $category->id) }}" method="POST">
        @csrf
        @method('PUT')
        @include('category._form')
        <button type="submit">Update</button>
    </form>
@endsection