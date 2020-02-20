@extends('layout')

@section('title', "Crear Juego de Rol")

@section('content')
    <div class="card">
        <h4 class="card-header">Crear Juego de Rol</h4>
        <div class="card-body">

            @if ($errors->any())
                <div class="alert alert-danger">
                    <h6>Por favor corrige los errores debajo:</h6>
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            <form method="POST" action="{{ url('juegos') }}">
                {{ csrf_field() }}

                <div class="form-group">
                    <label for="name">Nombre:</label>
                    <input type="text" class="form-control" name="name" id="name" placeholder="" value="{{ old('name') }}">
                </div>

                <div class="form-group">
                    <label for="genre">Genero:</label>
                    <input type="text" class="form-control" name="genre" id="genre" placeholder="" value="{{ old('genre') }}">
                </div>

                <div class="form-group">
                    <label for="creator">Creador:</label>
                    <input type="text" class="form-control" name="creator" id="creator" placeholder="" value="{{ old('creator') }}">
                </div>

                <div class="form-group">
                    <label for="editorial">Editorial:</label>
                    <input type="text" class="form-control" name="editorial" id="editorial" placeholder="" value="{{ old('editorial') }}">
                </div>

                <div class="form-group">
                    <label for="price">Precio:</label>
                    <input type="text" class="form-control" name="price" id="price" placeholder="" value="{{ old('price') }}">
                </div>                                

                <button type="submit" class="btn btn-primary">Crear Juego de Rol</button>
                <a href="{{ route('games.index') }}" class="btn btn-link">Regresar al listado de Juegos de Rol</a>
            </form>
        </div>
    </div>
@endsection