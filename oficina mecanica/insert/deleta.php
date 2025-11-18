<?php
$con = new mysqli("localhost", "root", "senaisp", "oficina_mecanica");

if ($con->connect_error) {
    die("Erro na conexão: " . $con->connect_error);
}

// PEGANDO O ID CORRETO
$id = $_GET['id'];

$sql = "DELETE from cliente WHERE id_cliente = $id ";

if ($con->query($sql) === TRUE) {
    echo "Dados atualizados com sucesso!";
    echo "<br><a href='oficina.php'>Voltar</a>";
} else {
    echo "Erro: " . $con->error;
}

$con->close();
?>
