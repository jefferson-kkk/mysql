<?php
$con = new mysqli("localhost", "root", "senaisp", "livraria");

$id = $_POST['cod_cliente'];
$nome = $_POST['nome_cliente']; 
$email = $_POST['email_cliente'];

$sql = "UPDATE clientes SET nome_cliente='$nome_cliente', email_cliente='$email' where cod_cliente=$id";

if($con->query($sql) === TRUE){
    echo "dados atualizado com sucesso!";
    echo"<br><A href='index.html'>voltar<a>";
} else {
    echo "Erro: " . $con->error;
}
$con->close();

?>