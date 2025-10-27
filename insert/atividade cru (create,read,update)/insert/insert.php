<?php

$nome_usuario = $_POST['nome'];
$id_usuario = $_POST['id'];

$conn = new mysqli('localhost', 'root',  'senaisp', 'pizzaria');

if ($conn->connect_error) {
    die('Erro na conexao: ' . $conn->connect_error);
}


$sql = "INSERT INTO usuario (nome_usuario, id_usuario) VALUES ('$nome_usuario', '$id_usuario')";
if ($conn->query($sql) === TRUE) {
    echo "Novo registro criado com sucesso";
} else {
    echo "Erro: " . $conn->error;
}

// header('Location: index.html');
exit;
$conn->close();


?>