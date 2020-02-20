@extends('layout')

@section('title', "Juego {$game->id}")

@section('content')
    <h1>Juego #{{ $game->id }}</h1>

    <p>Nombre del juego: {{ $game->name }}</p>
    <p>Genero: {{ $game->genre }}</p>
    <p>Creador: {{ $game->creator }}</p>
    <p>Editorial: {{ $game->editorial }}</p>
    <p>Precio: {{ $game->price }}</p>

    <p>
        <a href="{{ route('games.index') }}">Regresar al listado de Juegos de Rol</a>
    </p>
@endsection