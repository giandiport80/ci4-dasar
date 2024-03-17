<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\KomikModel;
use CodeIgniter\HTTP\ResponseInterface;
use Config\Database;

class Komik extends BaseController
{
    protected $komikModel;

    public function __construct()
    {
        $this->komikModel = new KomikModel();
    }

    public function index()
    {
        $data["title"] = "Daftar Komik";

        // query tanpa model
        // $db = Database::connect();
        // $listKomik = $db->query("SELECT * FROM komik")->getResult();

        // query dengan model
        // $komikModel = new KomikModel();
        // $data["listKomik"] = $komikModel->findAll();

        // $data["listKomik"] = $this->komikModel->findAll();
        $data["listKomik"] = $this->komikModel->getKomik();

        return view("komik/index", $data);
    }

    public function detail($slug)
    {
        $data["title"] = "Detail komik";
        // $komik = $this->komikModel->where("slug", $slug)->first();
        $data['komik'] = $this->komikModel->getKomik($slug);

        return view("komik/detail", $data);
    }
}
