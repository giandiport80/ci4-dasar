<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;

class Coba extends BaseController
{
    public function index()
    {
        return "halo nama saya " . $this->nama;
    }

    public function about($nama, $alamat)
    {
        return $nama . " " . $alamat;
    }
}
