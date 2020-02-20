@extends('layout')

@section('title', 'Editoriales')

@section('content')
    <br><br>
    <h1>{{ $title }}</h1>

    <p>
        <a href="{{ route('editorials.create') }}">Nueva Editorial</a>
    </p>

    <ul>
        @forelse ($editorials as $editorial)
            <li>
                {{ $editorial->name }}, ({{ $editorial->genre }})
                <a href="{{ route('editorials.show', $editorial) }}">Ver detalles</a> |
                <a href="{{ route('editorials.edit', $editorial) }}">Editar</a> |
                <form action="{{ route('editorials.destroy', $editorial) }}" method="POST">
                    {{ csrf_field() }}
                    {{ method_field('DELETE') }}
                    <button type="submit">Eliminar</button>
                </form>
            </li>

        @empty
            <li>No hay editoriales registradas.</li>
        @endforelse
    </ul>
@endsection

@section('sidebar')
    @parent
@endsection

