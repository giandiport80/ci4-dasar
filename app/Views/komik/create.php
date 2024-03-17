<?= $this->extend("layout/template") ?>

<?= $this->section("content"); ?>
<div class="container">
    <div class="row">
        <div class="col-8">
            <h2 class="my-3">Form Tambah Komik</h2>

            <form action="<?= base_url("komik/save") ?>" method="post">
                <?= csrf_field() ?>

                <div class="form-group row">
                    <label for="judul" class="col-sm-2 col-form-label">Judul</label>
                    <div class="col-sm-10">
                        <input type="text" name="judul" value="<?= old("judul") ?>" class="form-control <?= ($validation->hasError("judul") ? "is-invalid" : "") ?>" id="judul" autofocus>
                        <div class="invalid-feedback">
                            <?= $validation->getError("judul") ?>
                        </div>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="penulis" class="col-sm-2 col-form-label">Penulis</label>
                    <div class="col-sm-10">
                        <input type="text" name="penulis" value="<?= old("penulis") ?>" class="form-control" id="penulis">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="penerbit" class="col-sm-2 col-form-label">Penerbit</label>
                    <div class="col-sm-10">
                        <input type="text" name="penerbit" value="<?= old("penerbit") ?>" class="form-control" id="penerbit">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="sampul" class="col-sm-2 col-form-label">Sampul</label>
                    <div class="col-sm-10">
                        <input type="text" name="sampul" value="<?= old("sampul") ?>" class="form-control" id="sampul">
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-sm-10">
                        <button type="submit" class="btn btn-success">Simpan</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<?php $this->endSection(); ?>