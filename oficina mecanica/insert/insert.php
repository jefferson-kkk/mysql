

<?php


$id_cliente = $_POST['id_cliente'];
$nome_cliente = $_POST['nome_cliente'];
$cpf = $_POST['cpf'];
$telefone = $_POST['telefone'];
$endereco = $_POST['endereco'];
$email = $_POST['email'];
$id_veiculo = $_POST['id_veiculo'];

$conn = new mysqli('localhost', 'root',  'senaisp', 'oficina');

if ($conn->connect_error) {
    die('Erro na conexao: ' . $conn->connect_error);
}

$sql = "INSERT INTO cliente (id_cliente, nome_cliente, cpf, telefone, endereco, email, id_veiculo) VALUES ('$id_cliente', '$nome_cliente', '$cpf', '$telefone', '$endereco', '$email', '$id_veiculo')";

if ($conn->query($sql) === TRUE) {
    echo "Novo registro criado com sucesso";
} else {
    echo "Erro: " . $conn->error;
}

header('Location: index.html');
$conn->close();
exit;
?>