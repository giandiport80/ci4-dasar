<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\KomikModel;
use CodeIgniter\Config\Services as ConfigServices;
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
            "sampul" => [
                // "rules" => "uploaded[sampul]|max_size[sampul,2048]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]",
                "rules" => "max_size[sampul,2048]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]",
                "errors" => [
                    // "uploaded" => "pilih gambar sampul terlebih dahulu",
                    "max_size" => "ukuran gambar terlalu besar",
                    "is_image" => "yang anda pilih bukan gambar",
                    "mime_in" => "Yang anda pilih bukan gambar",
                ]
            ]
        ]);

        if (!$is_valid) {
            $validation = ConfigServices::validation();
            dd($validation);
            return redirect()->to(url_to("komik.create"))->withInput();
        }

        // ambil gambar
        $fileSampul = $this->request->getFile("sampul");

        // apakah tidak ada gambar yang diupload
        if ($fileSampul->getError() == 4) {
            $namaSampul = "default.png";
        } else {
            // ambil nama file
            // $namaSampul = $fileSampul->getName();

            // generate nama sampul
            $namaSampul = $fileSampul->getRandomName();

            // pindahkan file / relative terhadapt public
            $fileSampul->move("img", $namaSampul);
        }

        // dd($fileSampul);

        $slug = url_title($this->request->getPost("judul"), "-", "true");

        $this->komikModel->save([
            "judul" => $this->request->getPost("judul"),
            "slug" => $slug,
            "penulis" => $this->request->getPost("penulis"),
            "penerbit" => $this->request->getPost("penerbit"),
            "sampul" => $namaSampul,
        ]);

        session()->setFlashdata("pesan", "Data berhasil ditambahkan");

        return redirect()->to("/komik");
    }

    public function delete($id)
    {
        $komik = $this->komikModel->find($id);

        if ($komik->sampul != "default.png") {
            unlink("img/" . $komik->sampul);
        }

        $this->komikModel->delete($id);

        session()->setFlashdata("pesan", "Data berhasil dihapus");

        return redirect()->to("/komik");
    }

    public function edit($slug)
    {
        $data["title"] = "Edit Komik";
        $data["validation"] = Services::validation();
        $data["komik"] = $this->komikModel->getKomik($slug);

        return view("komik/edit", $data);
    }

    public function update($id)
    {
        $komik = $this->komikModel->getKomik($this->request->getPost("slug"));

        if ($komik->judul == $this->request->getPost("judul")) {
            $rule_judul = 'required';
        } else {
            $rule_judul = "required|is_unique[komik.judul]";
        }

        $is_valid = $this->validate([
            "judul" => $rule_judul,
        ]);

        if (!$is_valid) {
            return redirect()->back()->withInput();
        }

        $slug = url_title($this->request->getPost("judul"), "-", "true");
        $formData = [
            "id" => $id,
            "judul" => $this->request->getPost("judul"),
            "slug" => $slug,
            "penulis" => $this->request->getPost("penulis"),
            "penerbit" => $this->request->getPost("penerbit"),
            "sampul" => $this->request->getPost("sampul"),
        ];

        // $this->komikModel->save($formData);

        $this->komikModel->update($id, $formData);

        session()->setFlashdata("pesan", "Data berhasil diupdate");

        return redirect()->to(url_to("komik.detail", $slug));
    }
}
