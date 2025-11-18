<?php
$con = new mysqli("localhost", "root", "senaisp", "oficina_mecanica");

$id = $_GET['id'];

$result = $con->query("SELECT * FROM cliente WHERE id_cliente = $id");
$row = $result->fetch_assoc();
?>

<form action="update2.php" method="POST">

    <input type="hidden" name="id_cliente" value="<?php echo $row['id_cliente']; ?>">

    Nome: <input type="text" name="nome_cliente" value="<?php echo $row['nome_cliente']; ?>"><br>

    CPF: <input type="text" name="cpf" value="<?php echo $row['cpf']; ?>"><br>

    Telefone: <input type="text" name="telefone" value="<?php echo $row['telefone']; ?>"><br>

    Endereço: <input type="text" name="endereco" value="<?php echo $row['endereco']; ?>"><br>

    Email: <input type="text" name="email" value="<?php echo $row['email']; ?>"><br>

    ID do Veículo: <input type="number" name="id_veiculo" value="<?php echo $row['id_veiculo']; ?>"><br>

    <input type="submit" value="Salvar Alterações">

</form>
