@extends('layout')

@section('title', 'Juegos de Rol')

@section('content')
    <br><br>
    <h1>{{ $title }}</h1>

    <p>
        <a href="{{ route('games.create') }}">Nuevo Juego de Rol</a>
    </p>

    <ul>
        @forelse ($games as $game)
            <li>
                {{ $game->name }}, ({{ $game->genre }})
                <a href="{{ route('games.show', $game) }}">Ver detalles</a> |
                <a href="{{ route('games.edit', $game) }}">Editar</a> |
                <form action="{{ route('games.destroy', $game) }}" method="POST">
                    {{ csrf_field() }}
                    {{ method_field('DELETE') }}
                    <button type="submit">Eliminar</button>
                </form>
            </li>

        @empty
            <li>No hay juegos de rol registrados.</li>
        @endforelse
    </ul>
@endsection

@section('sidebar')
    @parent
@endsection

