@extends('layout')

@section('title', "Crear Juego de Rol")

@section('content')
    <h1>Editar juego</h1>

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

    <form method="POST" action="{{ url("juegos/{$game->id}") }}">
        {{ method_field('PUT') }}
        {{ csrf_field() }}

        <label for="name">Nombre:</label>
        <input type="text" name="name" id="name" placeholder="" value="{{ old('name', $game->name) }}">
        <br>
        <label for="genre">Genero:</label>
        <input type="text" name="genre" id="genre" placeholder="" value="{{ old('genre', $game->genre) }}">
        <br>
        <label for="creator">Creador:</label>
        <input type="text" name="" id="creator" placeholder="{{ old('creator', $game->creator) }}">
        <br>
        <label for="editorial">Editorial:</label>
        <input type="text" name="editorial" id="editorial" placeholder="" value="{{ old('editorial', $game->editorial) }}">
        <br>
        <label for="price">Precio:</label>
        <input type="text" name="price" id="price" placeholder="" value="{{ old('price', $game->price) }}">
        <br>
        <button type="submit">Actualizar Juego de Rol</button>
    </form>

    <p>
        <a href="{{ route('games.index') }}">Regresar al listado de Juegos de Rol</a>
    </p>
@endsection