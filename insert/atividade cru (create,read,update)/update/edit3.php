<?php
$con = new mysqli("localhost", "root", "senaisp", "pizzaria");

$id = $_POST['id_usuario'];
$nome = $_POST['nome_usuario']; 
$email = $_POST['email_usuario'];

$sql = "UPDATE usuario SET nome_usuario='$nome_usuario', id_usuario='$id_usuario' where id_usuario=$id";

if($con->query($sql) === TRUE){
    echo "dados atualizado com sucesso!";
    echo"<br><A href='index.html'>voltar<a>";
} else {
    echo "Erro: " . $con->error;
}
$con->close();

?>