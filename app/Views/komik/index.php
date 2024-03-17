<?= $this->extend("layout/template") ?>

<?= $this->section("content"); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h1>Komik</h1>

            <a href="<?= base_url("komik/create") ?>" class="btn btn-primary my-3">+ Komik</a>

            <?php if (session()->getFlashdata("pesan")) : ?>
                <div class="alert alert-success alert-dismissible fade show mb-3" role="alert">
                    <strong><?= session()->getFlashdata("pesan") ?></strong>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            <?php endif; ?>

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Sampul</th>
                        <th scope="col">Judul</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1; ?>
                    <?php foreach ($listKomik as $komik) : ?>
                        <tr>
                            <th scope="row"><?= $no; ?></th>
                            <td><img src="/img/<?= $komik->sampul ?>" class="sampul" alt=""></td>
                            <td><?= $komik->judul ?></td>
                            <td><a href="<?= base_url("komik/" . $komik->slug) ?>" class="btn btn-success">Detail</a></td>
                        </tr>
                        <?php $no++; ?>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>