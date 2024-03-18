<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\OrangModel;
use CodeIgniter\HTTP\ResponseInterface;

class Orang extends BaseController
{
    protected $orangModel;

    public function __construct()
    {
        $this->orangModel = new OrangModel();
    }

    public function index()
    {
        $currentPage = $this->request->getGet("page_orang") ?? 1;

        $data["title"] = "Daftar Komik";
        // 10: jumlah param, orang: nama table
        $data["totalData"] = 10;
        $data["listOrang"] = $this->orangModel->paginate($data["totalData"], "orang");
        $data["pager"] = $this->orangModel->pager;
        $data["currentPage"] = $currentPage;

        return view("orang/index", $data);
    }
}
