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
        $totalData = 10;
        $currentPage = $this->request->getGet("page_orang") ?? 1;
        $keyword = $this->request->getGet("keyword") ?? "";
        $listOrang = $this->orangModel->searchPaginate($keyword, $totalData);

        // 10: jumlah param, orang: nama table
        // $data["listOrang"] = $this->orangModel->paginate($totalData, "orang");

        $data["keyword"] = $keyword;
        $data["title"] = "Daftar Komik";
        $data["totalData"] = $totalData;
        $data["listOrang"] = $listOrang;
        $data["pager"] = $this->orangModel->pager;
        $data["currentPage"] = $currentPage;

        return view("orang/index", $data);
    }
}
