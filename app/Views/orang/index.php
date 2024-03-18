<?= $this->extend("layout/template") ?>

<?= $this->section("content"); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h1>Daftar Orang</h1>

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