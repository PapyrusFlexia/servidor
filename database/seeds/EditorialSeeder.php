<?php

use App\Editorial;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EditorialSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        Editorial::create([
            'name' => 'Wizards of the Coast',
            'genre' => 'Juegos de Fantasía',
            'address' => 'PenePolis',
            'email' => 'wotcg@gmail.com',
        ]);

        Editorial::create([
            'name' => 'Holocubierta Ediciones',
            'genre' => 'General',
            'address' => 'Memeverso',
            'email' => 'he@gmail.com',
        ]);

        Editorial::create([
            'name' => 'Chaosium',
            'genre' => 'Juegos de Misterio',
            'address' => 'Mordor',
            'email' => 'cha@gmail.com',
        ]);


    }
}
