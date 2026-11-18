<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
$komunikat = "";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    try {
        $pdo = new PDO("mysql:host=localhost;charset=utf8mb4", "root", "");
        $pdo->exec("CREATE DATABASE IF NOT EXISTS moja_baza; USE moja_baza;");
        $pdo->exec("CREATE TABLE IF NOT EXISTS logi_klikniec (
            id INT AUTO_INCREMENT PRIMARY KEY,
            opis VARCHAR(255),
            data_utworzenia DATETIME DEFAULT CURRENT_TIMESTAMP
        )");
        
        $stmt = $pdo->prepare("INSERT INTO logi_klikniec (opis) VALUES (?)");
        $stmt->execute(["Kliknięcie z IP: " . $_SERVER['REMOTE_ADDR']]);
        
        $ile = $pdo->query("SELECT COUNT(*) FROM logi_klikniec")->fetchColumn();
        $komunikat = "Dodano rekord. Łącznie w bazie: $ile";
    } catch (PDOException $e) {
        $komunikat = "Błąd: " . $e->getMessage();
    }
}
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Strona PHP</title>
    <style>
        body { font-family: sans-serif; max-width: 600px; margin: 40px auto; padding: 0 20px; line-height: 1.6; }
        header, footer { border-bottom: 1px solid #ddd; padding-bottom: 10px; margin-bottom: 30px; }
        footer { border-bottom: none; border-top: 1px solid #ddd; padding-top: 10px; margin-top: 40px; font-size: 0.9em; color: #666; }
        button { padding: 10px 20px; cursor: pointer; }
        p.msg { background: #f0f0f0; padding: 10px; }
    </style>
</head>
<body>

    <header>
        <strong>Projekt PHP + MySQL</strong>
    </header>

    <main>
        <h1>Maciek Bartnik</h1>
        <form method="POST">
            <button type="submit">Dodaj rekord do bazy</button>
        </form>

        <?php if ($komunikat): ?>
            <p class="msg"><?= $komunikat ?></p>
        <?php endif; ?>
    </main>

    <footer>
        &copy; <?= date("Y") ?> Maciek Bartnik
    </footer>

</body>
</html>
<?php
if (isset($conn) && $conn instanceof mysqli) {
    $conn->close();
}
    ?>