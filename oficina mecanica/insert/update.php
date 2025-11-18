<?php

$con = new mysqli("localhost", "root", "senaisp", "oficina_mecanica");

$id = $_GET['id_usuario'];
$result = $con->query("SELECT * FROM cliente WHERE id_cliente = $id");
$row = $result->fetch_assoc();
?>
<FROM action ="edit.php" method="POST">
    <input type="hidden" name="id" value="<?php echo $row['id_usuario']; ?>">
    nome: <input type="text" name="titulo" value="<?php echo $row['nome_cliente']; ?>"><br>
    codigo: <input type="text" name="autor" value="<?php echo $row['id_cliente']; ?>"><br>
<input type="submit" value="Salvar">