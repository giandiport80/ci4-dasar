<?= $this->extend("layout/template") ?>

<?= $this->section("content"); ?>

<div class="container mt-3">
    <h3>Detail Komik</h3>
    <div class="row">
        <div class="col">
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row no-gutters">
                    <div class="col-md-4">
                        <img src="<?= base_url("img/" . $komik->sampul) ?>" width="100%" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"><?= $komik->judul ?></h5>
                            <p class="card-text">Penulis: <?= $komik->penulis ?></p>
                            <p class="card-text text-muted">Penerbit: <?= $komik->penerbit ?></p>
                            <div class="mb-3">
                                <a href="" class="btn btn-warning">Edit</a>

                                <form action="<?= base_url("komik/" . $komik->id) ?>" method="post" class="d-inline">
                                    <?php csrf_hash() ?>
                                    <input type="hidden" name="_method" value="DELETE">

                                    <button type="submit" onclick="return confirm('Hapus komik?')" class="btn btn-danger">Delete</button>
                                </form>
                            </div>

                            <a href="<?= base_url("komik") ?>">Kembali ke daftar Komik</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $this->endSection(); ?>