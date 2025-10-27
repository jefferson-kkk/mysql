<?php

$con = new mysqli("localhost", "root", "senaisp", "livraria");

$id = $_GET['cod_cliente'];
$result = $con->query("SELECT * FROM clientes WHERE cod_cliente = $id");
$row = $result->fetch_assoc();
?>
<FROM action ="edit3.php" method="POST">
    <input type="hidden" name="id" value="<?php echo $row['COD_CLIENTE']; ?>">
    NOME: <input type="text" name="titulo" value="<?php echo $row['nome_cliente']; ?>"><br>
    EMAIL: <input type="text" name="autor" value="<?php echo $row['email_cliente']; ?>"><br>
<input type="submit" value="Salvar">
