<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use CodeIgniter\I18n\Time;
use Faker\Factory;

/**
 * php spark db:seed OrangFakeSeeder
 */
class OrangFakeSeeder extends Seeder
{
    public function run()
    {
        $faker = Factory::create("id_ID");

        foreach (range(1, 100) as $_) {
            $data = [
                'nama' => $faker->name(),
                'alamat' => $faker->address(),
                "created_at" => Time::createFromTimestamp($faker->unixTime()),
                "updated_at" => Time::createFromTimestamp($faker->unixTime()),
            ];

            $this->db->table('orang')->insert($data);
        }
    }
}
