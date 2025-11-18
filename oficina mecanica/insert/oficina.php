<?php
// Conexão com o banco
$conn = new mysqli('localhost', 'root', 'senaisp', 'oficina_mecanica');
if ($conn->connect_error) {
    die('Erro na conexão: ' . $conn->connect_error);
}

$sql = "SELECT * FROM cliente";
$result = $conn->query($sql);
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Painel da Oficina</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background: #eef2f7;
        }
        header {
            background: #1e3a8a;
            padding: 20px;
            color: white;
            text-align: center;
            font-size: 24px;
            letter-spacing: 1px;
        }
        .container {
            display: flex;
        }
        .sidebar {
            width: 230px;
            background: #111827;
            height: 100vh;
            padding-top: 20px;
            color: #d1d5db;
        }
        .sidebar a {
            display: block;
            padding: 15px;
            color: #d1d5db;
            text-decoration: none;
            font-size: 16px;
        }
        .sidebar a:hover {
            background: #374151;
        }
        .content {
            flex: 1;
            padding: 30px;
        }
        h2 {
            color: #1f2937;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #e5e7eb;
        }
        th {
            background: #1e40af;
            color: white;
        }
        tr:hover { background: #f3f4f6; }

        .btn {
            padding: 6px 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            color: white;
            font-size: 14px;
        }
        .edit {
            background: #10b981;
        }
        .delete {
            background: #ef4444;
        }
    </style>
</head>
<body>
    <header>Painel Administrativo da Oficina</header>
    <div class="container">
        <div class="sidebar">
            <a href="#">Dashboard</a>
            <a href="#">Serviços</a>
            <a href="#">Funcionários</a>
            <a href="#">Peças</a>
            <a href="#">Veículos</a>
            <a href="oficina.php">Clientes</a>
        </div>

        <div class="content">
            <h2>Clientes Registrados</h2>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>CPF</th>
                    <th>Telefone</th>
                    <th>Email</th>
                    <th>Endereço</th>
                    <th>ID Veículo</th>
                    <th>Ações</th>
                </tr>
                <?php while($row = $result->fetch_assoc()) { ?>
                <form action="editar.php?id=<?php echo $row['id_cliente']; ?>" method="post">
                             <tr>
                    <td><?php echo $row['id_cliente']; ?></td>
                    <td><?php echo $row['nome_cliente']; ?></td>
                    <td><?php echo $row['cpf']; ?></td>
                    <td><?php echo $row['telefone']; ?></td>
                    <td><?php echo $row['email']; ?></td>
                    <td><?php echo $row['endereco']; ?></td>
                    <td><?php echo $row['id_veiculo']; ?></td>
                    <td>
                        <a href="editar.php?id=<?php echo $row['id_cliente']; ?>">
                            <button type="submit" class="btn edit">Editar</button>
                        </a>
                        <a href="delete.php?id=<?php echo $row['id_cliente']; ?>" onclick="return confirm('Deseja excluir este cliente?');">
                            <a href="deleta.php?id=<?php
                            echo $row['id_cliente']; ?>">excluir</a>
                        </a>
                    </td>
                </tr>
                </form>               
                <?php } ?>
            </table>
        </div>
    </div>
</body>
</html>