<?= $this->extend("layout/template") ?>

<?= $this->section("content"); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h1>Komik</h1>
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
                            <td><a href="" class="btn btn-success">Detail</a></td>
                        </tr>
                        <?php $no++; ?>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>