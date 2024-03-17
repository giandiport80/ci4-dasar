<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;

class Pages extends BaseController
{
    public function index()
    {
        $data["title"] = "Home";

        echo view("layout/header", $data);
        echo view("pages/home");
        echo view("layout/footer");
    }

    public function about()
    {
        $data["title"] = "About";
        echo view("layout/header", $data);
        echo view("pages/about");
        echo view("layout/footer");
    }
}
