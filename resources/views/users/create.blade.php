@extends('layout')

@section('title', "Crear usuario")

@section('content')
    <br><br>
    <h1>Crear usuario</h1>

    @if ($errors->any())
    <div class="alert alert-danger">
        <h>Por favor corrige los debajo:</h>
        <ul>
        @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
        @endforeach
        </ul>
    </div>
    @endif

    <form method="POST" action="{{ url('usuarios') }}">
        {{ csrf_field() }}

        <label for="name">Nombre:</label>
        <input type="text" name="name" id="name" value="{{ old('name') }}">
        <br>
        <label for="email">Email</label>
        <input type="email" name="email" id="email" value="{{ old('email') }}">
        <br>
        <label for="password">Contraseña:</label>
        <input type="password" name="password" id="password">
        <br>
        <button type="submit"> Crear Usuario</button>
    </form>
    <p>
        <a href="{{ route('users.index') }}">Regresar al listado de usuarios</a>
    </p>
@endsection