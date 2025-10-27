<?php

$con = new mysqli("localhost", "root", "senaisp", "pizzaria");

$id = $_GET['id_usuario'];
$result = $con->query("SELECT * FROM usuario WHERE id_usuario = $id");
$row = $result->fetch_assoc();
?>
<FROM action ="edit3.php" method="POST">
    <input type="hidden" name="id" value="<?php echo $row['id_usuario']; ?>">
    nome: <input type="text" name="titulo" value="<?php echo $row['nome_usuario']; ?>"><br>
    codigo: <input type="text" name="autor" value="<?php echo $row['id_usuario']; ?>"><br>
<input type="submit" value="Salvar">