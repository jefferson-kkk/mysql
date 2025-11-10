<?php
$con = new mysqli("localhost", "root", "senaisp", "cliente");

$id = $_POST['id_cliente'];
$nome = $_POST['nome_cliente']; 
$email = $_POST['email_cliente'];

$sql = "UPDATE cliente SET nome_cliente='$nome_cliente', id_cliente='$id_cliente' where id_cliente=$id";

if($con->query($sql) === TRUE){
    echo "dados atualizado com sucesso!";
    echo"<br><A href='index.html'>voltar<a>";
} else {
    echo "Erro: " . $con->error;
}
$con->close();

?>