<?php
$con = new mysqli("localhost", "root", "senaisp", "oficina_mecanica");

if ($con->connect_error) {
    die("Erro na conexão: " . $con->connect_error);
}

// PEGANDO O ID CORRETO
$id = $_POST['id_cliente'];

// PEGANDO TODOS OS CAMPOS DO FORMULÁRIO
$nome_cliente = $_POST['nome_cliente'];
$cpf = $_POST['cpf'];
$telefone = $_POST['telefone'];
$endereco = $_POST['endereco'];
$email = $_POST['email'];
$id_veiculo = $_POST['id_veiculo'];

// UPDATE CORRETO
$sql = "UPDATE cliente SET 
            nome_cliente='$nome_cliente', 
            cpf='$cpf', 
            telefone='$telefone', 
            endereco='$endereco', 
            email='$email', 
            id_veiculo='$id_veiculo'
        WHERE id_cliente = $id";

if ($con->query($sql) === TRUE) {
    echo "Dados atualizados com sucesso!";
    echo "<br><a href='oficina.php'>Voltar</a>";
} else {
    echo "Erro: " . $con->error;
}

$con->close();
?>
