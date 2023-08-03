
<title>CONSTRUQUER</title>
<?php
require '../header.php';
require '../menutopo.php';
?>
<form action="cadastro.php" method="post">
    <div class="row">
        </div>
        <div class="mt-3">
        <style>
            

  
</style>

        <label>Nome</label>
        <input type="text" name="Nome" class="form-control" placeholder="Digite seu nome completo" id="nome" name="nome">
    </div>
    
    <div class="mt-3">
        <label>CPF</label>
        <input type="text" class="form-control" placeholder="Digite seu CPF" name="CPF" id="cpf">
    </div>
    <div class="mt-3">   
    <label>Telefone</label>
        <input type="text" class="form-control" placeholder="Digite seu Telefone" name="Telefone" id="Telefone" >
    </div>
    <div class="mt-3">  
    <label>E-mail</label>
        <input type="text" class="form-control" placeholder="Digite seu melhor email" name="E-mail" id="E-mail" >
    </div>
    <div class="mt-3">
       
        <label>Senha</label>
        <input type="text" class="form-control" placeholder="Digite sua senha" name="password" id="Senha">
    </div>
    <button type="submit" class="btn btn-success btn btn-outline-primary mt-3 float-right">
            CADASTRAR
        </button>
    </div>
    
   
</form>
<?php
require "../footer.php";
?>