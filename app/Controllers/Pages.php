<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;

class Pages extends BaseController
{
    public function index()
    {
        $data["title"] = "Home";

        // echo view("layout/header", $data);
        // echo view("pages/home");
        // echo view("layout/footer");

        return view("pages/home", $data);
    }

    public function about()
    {
        $data["title"] = "About";

        return view("pages/about", $data);
    }

    public function contact()
    {
        $data["title"] = "Contact Us";
        $data["alamat"] = [
            [
                "tipe" => "Rumah",
                "alamat" => "jl abc no 123",
                "kota" => "Kab. Tangerang"
            ],
            [
                "tipe" => "Kantor",
                "alamat" => "jl jeruk no 12",
                "kota" => "Tangerang"
            ],
        ];

        return view("pages/contact", $data);
    }
}
