@extends('layout')

@section('title', "Crear Editorial")

@section('content')
    <h1>Editar Editorial</h1>

    @if ($errors->any())
        <div>
            <h6>Por favor corrige los errores debajo:</h6>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form method="POST" action="{{ url("editoriales/{$editorial->id}") }}">
        {{ method_field('PUT') }}
        {{ csrf_field() }}

        <label for="name">Nombre:</label>
        <input type="text" name="name" id="name" placeholder="" value="{{ old('name', $editorial->name) }}">
        <br>
        <label for="genre">Genero:</label>
        <input type="text" name="genre" id="genre" placeholder="" value="{{ old('genre', $editorial->genre) }}">
        <br>
        <label for="address">Direccion:</label>
        <input type="text" name="" id="address" placeholder="{{ old('address', $editorial->address) }}">
        <br>
        <label for="email">Email:</label>
        <input type="text" name="email" id="email" placeholder="" value="{{ old('editorial', $editorial->editorial) }}">
        <br>
        <button type="submit">Actualizar Editorial</button>
    </form>

    <p>
        <a href="{{ route('editorials.index') }}">Regresar al listado de Editoriales</a>
    </p>
@endsection