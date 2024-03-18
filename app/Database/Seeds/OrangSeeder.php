<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use CodeIgniter\I18n\Time;

/**
 * membuat seeder
 * php spark make:seeder OrangSeeder
 * 
 * menjalankan seeder
 * php spark db:seed OrangSeeder
 * 
 */
class OrangSeeder extends Seeder
{
    public function run()
    {
        $data = [
            [
                'nama' => 'Dinal Alenda',
                'alamat' => 'Jalan Jeruk Jakarta Barat',
                "created_at" => Time::now(),
                "updated_at" => Time::now(),
            ],
            [
                'nama' => 'John Doe',
                'alamat' => 'Jalan Mangga Jakarta Selatan',
                "created_at" => Time::now(),
                "updated_at" => Time::now(),
            ],
            [
                'nama' => 'Jane Doe',
                'alamat' => 'Jalan Apel Jakarta Timur',
                "created_at" => Time::now(),
                "updated_at" => Time::now(),
            ],
            [
                'nama' => 'Michael Smith',
                'alamat' => 'Jalan Anggur Jakarta Pusat',
                "created_at" => Time::now(),
                "updated_at" => Time::now(),
            ],
            [
                'nama' => 'Jessica Brown',
                'alamat' => 'Jalan Durian Jakarta Utara',
                "created_at" => Time::now(),
                "updated_at" => Time::now(),
            ]
        ];


        // Simple Queries
        // $this->db->query('INSERT INTO users (username, email) VALUES(:username:, :email:)', $data);

        // Using Query Builder
        $this->db->table('orang')->insertBatch($data);
    }
}
