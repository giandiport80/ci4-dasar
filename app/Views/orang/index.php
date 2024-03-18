<?= $this->extend("layout/template") ?>

<?= $this->section("content"); ?>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <h1 class="my-3">Daftar Orang</h1>

            <form action="" method="get">
                <div class="input-group mb-3">
                    <input type="text" name="keyword" value="<?= $keyword ?>" class="form-control" placeholder="Masukkan Keyword" autocomplete="off">
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="submit" id="button-addon2">Cari</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col">

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nama</th>
                        <th scope="col">Alamat</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1 + ($totalData * ($currentPage - 1)); ?>
                    <?php foreach ($listOrang as $orang) : ?>
                        <tr>
                            <th scope="row"><?= $no; ?></th>
                            <td><?= $orang->nama ?></td>
                            <td><?= $orang->alamat ?></td>
                        </tr>
                        <?php $no++; ?>
                    <?php endforeach; ?>
                </tbody>
            </table>

            <!-- param1 nama table db -->
            <!-- param2 nama view pagination -->
            <?= $pager->links("orang", "orang_pagination") ?>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>