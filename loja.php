<?php
//require "../header.php";
include __DIR__ . '/../header.php';
//require "../menutopo.php";
include __DIR__ . '/../menutopo.php';
//require "../controle/buscaproduto.php";
include __DIR__ . '/../controle/buscaproduto.php';

?>
 
<div class="row">

    <?php while ($data = $prp->fetch(PDO::FETCH_ASSOC)) { ?>
        <div class="col-md-4">
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="../assets/<?=$data["profoto"]; ?>" height="250px" alt="img heigth 100px x width 180px">
                <div class="card-body">
                    <h5 class="card-title"><?= $data["pronome"]; ?></h5>
                    <p class="card-text">
                        <?php
                        // Se o texto for maior que 40, exibe até 40 caracteres
                        if (strlen($data["prodescricao"]) > 40) {
                            echo substr($data["prodescricao"], 0, 40) . "...";
                        }
                        // Senão exibi o texto completo
                        else {
                            echo $data["prodescricao"];
                        }
                        ?>
                    </p>
                    <h6 class="card-title text-danger">R$ <?php echo $data["provalor"]; ?> em <?php echo $data["proparcelamento"]; ?>x sem Juros</h6>
                    <?php
                    if ($data["proativo"] == 1) {
                        echo '<a href="produtos.php?id=' . $data["proid"] . '" class="btn btn-primary">Ver produto</a>';
                    } else {
                        echo '<label class="btn btn-warning">Produto Indisponível</label>';
                    }
                    ?>
                </div>
            </div>
        </div>
    <?php } ?>
</div>

<?php
//require "../footer.php";
include __DIR__ . '/../footer.php';
?>