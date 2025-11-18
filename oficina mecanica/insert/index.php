<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Cliente</title>

<style>
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, #e3edf7, #cfd9df);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

form {
    background: #ffffff;
    padding: 30px;
    border-radius: 18px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
    width: 330px;
}

h2 {
    text-align: center;
    color: #2d3748;
    margin-bottom: 25px;
}

label {
    display: block;
    color: #4a5568;
    margin-bottom: 6px;
    font-size: 14px;
    font-weight: 500;
}

input {
    width: 100%;
    padding: 10px 12px;
    border: 1.8px solid #cbd5e0;
    border-radius: 8px;
    margin-bottom: 18px;
}

button {
    width: 100%;
    padding: 12px;
    background: linear-gradient(135deg, #3182ce, #2563eb);
    color: white;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    cursor: pointer;
}

button:hover {
    background: linear-gradient(135deg, #2563eb, #1d4ed8);
}

.link-btn {
    display: block;
    margin-top: 10px;
    text-align: center;
    padding: 12px;
    background: #4a5568;
    color: white;
    border-radius: 8px;
    text-decoration: none;
    font-weight: bold;
}

.link-btn:hover {
    background: #2d3748;
}
</style>

</head>
<body>

    <form action="insert.php" method="post">
        <h2>Cadastro de Cliente</h2>

        <label>Nome:</label>
        <input type="text" name="nome_cliente" required>

        <label>CPF:</label>
        <input type="text" name="cpf" placeholder="000.000.000-00" required>

        <label>Telefone:</label>
        <input type="tel" name="telefone" placeholder="(00) 00000-0000" required>

        <label>Endereço:</label>
        <input type="text" name="endereco" required>

        <label>Email:</label>
        <input type="email" name="email" required>

        <label>ID Veículo:</label>
        <input type="number" name="id_veiculo" required>

        <button type="submit">Cadastrar</button>

        <!-- LINK PARA A PÁGINA DE CLIENTES -->
        <a href="oficina.php" class="link-btn">Ver Clientes Registrados</a>
    </form>

</body>
</html>
