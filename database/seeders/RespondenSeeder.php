<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Responden;

class RespondenSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Responden::factory(50)->create();

        Responden::create([
            'acara_id' => 5,
            'jadwal' => \Carbon\Carbon::now(),
            'pendengar' => 'Mutofa Aldi',
            'usia' =>  21,
            'kelamin' => 'Laki-Laki',
            'telepon' => '6282352673647',
            'respon_pendengar' => 'Acaranya seru sekali',
            'rating' => 5
        ]);

        Responden::create([
            'acara_id' => 10,
            'jadwal' => \Carbon\Carbon::now(),
            'pendengar' => 'Deuwi Satriya Irawan',
            'usia' =>  23,
            'kelamin' => 'Laki-Laki',
            'telepon' => '6282253332802',
            'respon_pendengar' => 'Acaranya Gokil',
            'rating' => 5
        ]);
    }
}
