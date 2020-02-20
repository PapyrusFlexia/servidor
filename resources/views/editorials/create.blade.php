@extends('layout')

@section('title', "Crear Editorial")

@section('content')
    <div class="card">
        <h4 class="card-header">Crear Editorial</h4>
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

            <form method="POST" action="{{ url('editoriales') }}">
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
                    <label for="address">Direccion:</label>
                    <input type="text" class="form-control" name="address" id="address" placeholder="" value="{{ old('address') }}">
                </div>

                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="text" class="form-control" name="email" id="email" placeholder="" value="{{ old('email') }}">
                </div>
                <button type="submit" class="btn btn-primary">Crear Editorial</button>
                <a href="{{ route('editorials.index') }}" class="btn btn-link">Regresar al listado de Editoriales</a>
            </form>
        </div>
    </div>
@endsection