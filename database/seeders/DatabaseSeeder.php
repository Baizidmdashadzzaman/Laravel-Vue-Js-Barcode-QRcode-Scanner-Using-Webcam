<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

    	for ($i=0;$i<=100;$i++) {
            DB::table('products')->insert([
                'name' => 'Product-'.$i,
                'image' => '/assets/images/items/3.jpg',
                'price' => 500+$i,
                'updated_at' =>$faker->datetime,
                'created_at' => $faker->datetime              
            ]);
        }
        
    }
}
