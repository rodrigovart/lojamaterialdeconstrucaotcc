<?php
require '../header.php';
require '../menutopo.php';
require "../controle/mensagem.php";
?>
<title>CONSTRUQUER</title>
<form action="../view/contato.php" method="post">


  </style>
    <div class="mt-3">
        
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text">NOME:</span>
            </div>
            <input type="text" class="form-control" placeholder="Digite seu nome completo" id="nome" name="nome">
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text">E-MAIL:</span>
            </div>
            <input type="email" class="form-control" placeholder="Digite seu melhor e-mail" id="email" name="email">
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text">ASSUNTO:</span>
            </div>
            <input type="text" class="form-control" placeholder="Digite o assunto ao qual tem dúvidas" id="assunto" name="assunto">
        </div>
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text">MENSAGEM:</span>
            </div>
            <textarea class="form-control" placeholder="Digite detalhadamente o motivo do contato" id="mensagem" name="mensagem"></textarea>
        </div>
        <button type="submit" class="btn btn-success btn btn-outline-primary mt-3 float-right">
            ENVIAR
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-send" viewBox="0 0 16 16">
                <path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576 6.636 10.07Zm6.787-8.201L1.591 6.602l4.339 2.76 7.494-7.493Z" />
            </svg>
        </button>
    </div>
</form>
<?php
require '../footer.php';
?>