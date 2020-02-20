@extends('layout')

@section('title', "Editorial {$editorial->id}")

@section('content')
    <h1>Juego #{{ $editorial->id }}</h1>

    <p>Nombre de la editorial: {{ $editorial->name }}</p>
    <p>Genero: {{ $editorial->genre }}</p>
    <p>Direccion: {{ $editorial->address }}</p>
    <p>Email: {{ $editorial->email }}</p>

    <p>
        <a href="{{ route('editorials.index') }}">Regresar al listado de Editoriales</a>
    </p>
@endsection