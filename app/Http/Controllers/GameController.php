<?php

namespace App\Http\Controllers;

use App\Game;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;

class GameController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        $games = Game::all();

        $title = 'Listado de juegos';

        return view('games.index', compact('title', 'games'));
    }

    public function show(Game $game)
    {
        return view('games.show', compact('game'));
    }

    public function create()
    {
        return view('games.create');
    }

    public function store()
    {
        $data = request()->validate([
            'name' => ['required','unique:games,name'],
            'genre' => 'required',
            'editorial' => 'required',
            'creator' => 'required',
            'price' => 'required',
        ], [
            'name.required' => 'El nombre es obligatorio',
            'genre.required' => 'El genero es obligatorio',
            'editorial.required' => 'La editorial es obligatoria',
            'creator.required' => 'El creador es obligatorio',
            'price.required' => 'El precio es obligatorio',
            'name.unique' => 'El nombre del juego ya esta en uso',
        ]);

        Game::create([
            'name' => $data['name'],
            'genre' => $data['genre'],
            'editorial' => $data['editorial'],
            'creator' => $data['creator'],
            'price' => $data['price']
        ]);

        return redirect()->route('games.index');
    }

    public function edit(Game $game)
    {
        return view('games.edit', ['game' => $game]);
    }

    public function update(Game $game)
    {
        $data = request()->validate([
            'name' => 'required',
            'genre' => 'required',
            'editorial' => 'required',          
            'price' => 'required',
        ],[
            'name.required' => 'El campo nombre es obligatorio',
            'genre.required' => 'El campo genero es obligatorio',
            'editorial.required' => 'El campo editorial es obligatorio',
            'price.required' => 'El campo salida es obligatorio',          
        ]);

        $game->update($data);

        return redirect()->route('games.show', ['game' => $game]);
    }

    function destroy(Game $game)
    {
        $game->delete();

        return redirect()->route('games.index');
    }
}
