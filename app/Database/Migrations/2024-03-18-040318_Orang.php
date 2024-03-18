<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

/**
 * membuat migrasi
 * php spark migrate:create Orang
 * 
 * menjalankan migrasi
 * php spark migrate
 */
class Orang extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
                'auto_increment' => true,
            ],
            'nama' => [
                'type'       => 'VARCHAR',
                'constraint' => '100',
            ],
            'alamat' => [
                'type' => 'TEXT',
                'null' => true,
            ],
            "created_at" => [
                "type" => "DATETIME",
                "null" => true,
            ],
            "updated_at" => [
                "type" => "DATETIME",
                "null" => true,
            ]
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('orang');
    }

    public function down()
    {
        $this->forge->dropTable('orang');
    }
}
