<?php
$nome_cliente = $_POST['nome_cliente'];
$cpf = $_POST['cpf'];
$telefone = $_POST['telefone'];
$endereco = $_POST['endereco'];
$email = $_POST['email'];
$id_veiculo = $_POST['id_veiculo'];

$conn = new mysqli('localhost', 'root', 'senaisp', 'oficina_mecanica');

if ($conn->connect_error) {
    die('Erro na conexao: ' . $conn->connect_error);
}

// NÃO coloque id_cliente aqui, pois ele é AUTO_INCREMENT
$sql = "INSERT INTO cliente (nome_cliente, cpf, telefone, endereco, email, id_veiculo) 
        VALUES ('$nome_cliente', '$cpf', '$telefone', '$endereco', '$email', '$id_veiculo')";

if ($conn->query($sql) === TRUE) {
    echo "Novo registro criado com sucesso";
} else {
    echo "Erro: " . $conn->error;
}

$conn->close();

// redireciona após fechar a conexão
header('Location: oficina.html');
exit;
?>
