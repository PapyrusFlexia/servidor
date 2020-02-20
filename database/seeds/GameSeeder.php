<?php

use App\Game;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class GameSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        Game::create([
            'name' => 'Dungeons & Dragons',
            'genre' => 'Fantasia',
            'creator' => 'Gary Gigax',
            'editorial' => 'Wizards of the Coast',
            'price' => '50',
        ]);

        Game::create([
            'name' => 'La Marca del Este',
            'genre' => 'Fantasia',
            'creator' => 'Pedro Gil Steinkel',
            'editorial' => 'Holocubierta Ediciones',
            'price' => '50',
        ]);

        Game::create([
            'name' => 'La llamada de Cthulhu',
            'genre' => 'Misterio',
            'creator' => 'Sandy Petersen',
            'editorial' => 'Chaosium',
            'price' => '50',
        ]);


    }
}
