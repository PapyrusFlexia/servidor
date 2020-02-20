<?php

namespace App\Http\Controllers;

use App\Editorial;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;

class EditorialController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        $editorials = Editorial::all();

        $title = 'Listado de editoriales';

        return view('editorials.index', compact('title', 'editorials'));
    }

    public function show(Editorial $editorial)
    {
        return view('editorials.show', compact('editorial'));
    }

    public function create()
    {
        return view('editorials.create');
    }

    public function store()
    {
        $data = request()->validate([
            'name' => ['required','unique:editorials,name'],
            'genre' => 'required',
            'address' => 'required',
            'email' => 'required',
        ], [
            'name.required' => 'El nombre es obligatorio',
            'genre.required' => 'El genero es obligatorio',
            'address.required' => 'La dirección es obligatoria',
            'email.required' => 'El precio es obligatorio',
            'name.unique' => 'El nombre de la dirección ya esta en uso',
        ]);

        Editorial::create([
            'name' => $data['name'],
            'genre' => $data['genre'],
            'address' => $data['address'],
            'email' => $data['email'],
            
        ]);

        return redirect()->route('editorials.index');
    }

    public function edit(Editorial $editorial)
    {
        return view('editorials.edit', ['editorial' => $editorial]);
    }

    public function update(Editorial $editorial)
    {
        $data = request()->validate([
            'name' => 'required',
            'genre' => 'required',       
            'email' => 'required',
        ],[
            'name.required' => 'El campo nombre es obligatorio',
            'genre.required' => 'El campo genero es obligatorio',
            'email.required' => 'El email es obligatorio',          
        ]);

        $editorial->update($data);

        return redirect()->route('editorials.show', ['editorial' => $editorial]);
    }

    function destroy(Editorial $editorial)
    {
        $editorial->delete();

        return redirect()->route('editorials.index');
    }
}
