<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class GenresTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $genres = collect([
            'Manis',
            'Kecut',
            'Asam',
            'Pahit',
            'Enak',
            'Lumayan'
        ]);

        foreach ($genres as $genre) {
            DB::table('genres')->insert([
                'genre' => $genre
            ]);
        }
    }
}
