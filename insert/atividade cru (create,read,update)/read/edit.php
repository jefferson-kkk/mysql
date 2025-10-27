<?php
$con = new mysqli('localhost', 'root', 'senaisp', 'pizzaria');
$result = $con->query("SELECT * FROM usuario");

echo "<h2>Lista de usuario</h2>";
echo "<table border='1'>
        <tr>
            <th>Código</th>
            <th>Nome</th>
            <th>Ações</th>
        </tr>";
        while($row = $result->fetch_assoc()){
            echo "<tr>
                    <td>{$row['id_usuario']}</td>
                    <td>{$row['nome_usuario']}</td>
                    <td><a href='../update/edit2.php?id_usuario={$row['id_usuario']}'>Editar</a></td>
                </tr>";
        }
echo "</table>";
$con->close();
?>
<a href="../index.php"><button type="button">pagina inicial</button></a>