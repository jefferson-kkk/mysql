<?php
$con = new mysqli('localhost', 'root', 'senaisp', 'oficina');
$result = $con->query("SELECT * FROM cliente");

echo "<h2>Lista de cliente</h2>";
echo "<table border='1'>
        <tr>
            <th>Código</th>
            <th>Nome</th>
            <th>Ações</th>
        </tr>";
        while($row = $result->fetch_assoc()){
            echo "<tr>
                    <td>{$row['id_client']}</td>
                    <td>{$row['nome_cliente']}</td>
                    <td><a href='../update/edit2.php?id_usuario={$row['id_cliente']}'>Editar</a></td>
                </tr>";
        }
echo "</table>";
$con->close();
?>
<a href="oficina mecanica/insert/index.php"><button type="button">pagina inicial</button></a>