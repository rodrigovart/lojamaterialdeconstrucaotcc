<?php

require '../header.php';
require '../menutopo.php';
?>
<main class="mt-5">
    <div class="container">
        <h1>CADASTRO DE PRODUTOS</h1>
        <form action="" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="nome" class="form-label">PRODUTO</label>
                <input type="text" class="form-control" id="nome" name="nome">
            </div>
            <div class="mb-3">
                <label for="foto" class="form-label">FOTO</label>
                <input type="file" class="form-control" id="foto" name="foto">
            </div>
            <button type="submit" class="btn btn-info">GRAVAR</button>
        </form>
    </div>
</main>
<?php
require '../footer.php';
?>