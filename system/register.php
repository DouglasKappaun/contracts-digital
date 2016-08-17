
<html>
<?php include "head.php" ?>
<body>

<form>
<div id="moverAdmin">
    <img class="img-admin" src="../webroot/img/admin.png" id="imgAdmin"/>
</div>
<div id="moverUser">
    <img class="img-user" src="../webroot/img/users.png" id="imgUser"/>
</div>
    <center>
<div id="form-admin">
    <h2>Formulário do Administrador</h2>
    <label for="nome">Nome</label>
    <input type="text" placeholder="Digite seu nome..." class="input-form"><br>
    <label for="email">E-Mail</label>
    <input type="email" placeholder="example@example.com" class="input-form"><br>
    <label for="senha">Senha</label>
    <input type="password" placeholder="***********" class="input-form"><br>
    <label for="confirm-password">Confirmar senha</label>
    <input type="password" placeholder="***********" class="input-form"><br>
    <label for="telefone">Telefone</label>
    <input type="number" placeholder="(99)9999-9999" class="input-form"><br>
</div>
    <br><br>
    <div id="form-user">
        <h2>Formulário do Locatário</h2>
        <label for="nome">Nome</label>
        <input type="text" placeholder="Digite seu nome..." class="input-form"><br>
        <label for="nacionalidade">Nacionalidade</label>
        <input type="text" placeholder="Ex: Brasileiro" class="input-form"><br>
        <label for="profissao">Profissao</label>
        <input type="text" placeholder="Ex: Estudante, Agricultor..." class="input-form"><br>
        <label for="rg">RG</label>
        <input type="text" placeholder="9999999999" class="input-form"><br>
        <label for="cpf">CPF</label>
        <input type="number" placeholder="Apenas números..." class="input-form"><br>
        <label for="estado">Estado</label>
        <select name="estados">
            <option value="Ola">Ola</option>
        </select><br>
        <label for="cidade">Cidade</label>
        <select name="cidade">
            <option value="Cidade">Cidade tal</option>
        </select><br>
        <label for="rua">Rua</label>
        <input type="text" placeholder="Ex: Rua 20 de Setembro" class="input-form"><br>
        <label for="bairro">Bairro</label>
        <input type="text" placeholder="Ex: Centro, Interior, etc..." class="input-form"><br>
        <label for="numero-casa">Nº Casa</label>
        <input type="number" class="input-form"/><br>
        <label for="cep">CEP</label>
        <input type="number" placeholder="99999000" class="input-form"><br>
        <label for="telefone">Telefone</label>
        <input type="number" placeholder="(99)9999-9999" class="input-form"><br>
    </div>
    </center>
</form>
</body>
