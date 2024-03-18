<?php

use App\Controllers\Admin\Dashboard;
use App\Controllers\Coba;
use App\Controllers\Home;
use App\Controllers\Komik;
use App\Controllers\Pages;
use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
// $routes->get('/', 'Home::index');

// $routes->get('/', [Home::class, 'index']);
// $routes->get('/home/coba', [Home::class, 'coba']);
// $routes->get("/coba", [Coba::class, "index"]);
// $routes->get("/about/(:segment)/(:segment)", [Coba::class, "about"]);

// $routes->get("admin", [Dashboard::class, "index"]);

$routes->get("/fungsi", function () {
    return "ini function";
});

$routes->get("/", [Pages::class, "index"]);
$routes->get("/about", [Pages::class, "about"]);
$routes->get("/contact", [Pages::class, "contact"]);
$routes->get("/faker", [Pages::class, "faker"]);

$routes->get("/komik", [Komik::class, "index"], ["as" => "komik.index"]); // naming route
$routes->get("/komik/create", [Komik::class, "create"], ["as" => "komik.create"]);
$routes->get("/komik/(:segment)/edit", [Komik::class, "edit"]);
$routes->put("/komik/(:segment)", [Komik::class, "update"]);
$routes->post("/komik/save", [Komik::class, "save"]);
$routes->delete("/komik/(:num)", [Komik::class, "delete"]);
$routes->get("/komik/(:segment)", [Komik::class, "detail"], ["as" => "komik.detail"]);
