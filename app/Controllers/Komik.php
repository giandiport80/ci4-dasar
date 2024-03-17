<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\KomikModel;
use CodeIgniter\Exceptions\PageNotFoundException;
use CodeIgniter\HTTP\ResponseInterface;
use Config\Database;
use Config\Services;

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

        if (!$data["komik"]) {
            throw new PageNotFoundException("Judul komik $slug tidak ditemukan");
        }

        return view("komik/detail", $data);
    }

    public function create()
    {
        $data["title"] = "Tambah Komik";
        $data["validation"] = Services::validation();

        return view("komik/create", $data);
    }

    public function save()
    {
        $is_valid = $this->validate([
            "judul" => "required|is_unique[komik.judul]",
        ]);

        if (!$is_valid) {
            return redirect()->back()->withInput();
        }

        $slug = url_title($this->request->getPost("judul"), "-", "true");

        $this->komikModel->save([
            "judul" => $this->request->getPost("judul"),
            "slug" => $slug,
            "penulis" => $this->request->getPost("penulis"),
            "penerbit" => $this->request->getPost("penerbit"),
            "sampul" => $this->request->getPost("sampul"),
        ]);

        session()->setFlashdata("pesan", "Data berhasil ditambahkan");

        return redirect()->to("/komik");
    }
}
