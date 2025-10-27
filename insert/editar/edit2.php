<?php

$con = new mysqli('localhost', 'root', 'senaisp', 'livraria');
$result = $con->query("SELECT * FROM clientes");

echo "<h2>Lista de Clientes</h2>";
echo "<tbale border='1'>
        <tr>
            <th>Código</th>
            <th>Nome</th>
            <th>Email</th>
            <th>Ações</th>
        </tr>";
        while($row = $result->fetch_assoc()){
            echo "<tr>
                    <td>".$row['cod_cliente']."</td>
                    <td>".$row['nome_cliente']."</td>
                    <td>".$row['email_cliente']."</td>
                    <td><a href='edit.php?cod_cliente={$row['cod_cliente']}'>Editar</a></td>
                </tr>";
        }
echo "</table>";
$con->close();
?>

<a href="index.php"><button type="button">pagina inicial</button></a>