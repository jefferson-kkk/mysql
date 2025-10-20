<?php

$nome = $_POST['nome'];
$email = $_POST['email'];

$conn = new mysqli('localhost', 'root',  'senaisp', 'biblioteca');

if ($conn->connect_error) {
    die('Erro na conexao: ' . $conn->connect_error);
}


$sql = "INSERT INTO usuarios (nome, email) VALUES ('$nome', '$email')";
if ($conn->query($sql) === TRUE) {
    echo "Novo registro criado com sucesso";
} else {
    echo "Erro: " . $conn->error;
}

// header('Location: index.html');
exit;
$conn->close();


?>