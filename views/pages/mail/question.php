<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
</head>
<body>
    Er is zojuist door <?= esc($data['fullname']) ?> een vraag gesteld aan <?= esc($data['hotel']) ?>.
    <br><br>
    Naam: <?= esc($data['fullname']) ?>
    <br>
    E-mailadres: <?= esc($data['mailaddress']) ?>
    <br>
    Telefoonnummer: <?= esc($data['phone']) ?>
    <br>
    Vraag:
    <hr>
    <?= nl2br(esc($data['question'])) ?>
    <hr><br>
    Met vriendelijke groet,
    <br><br>
    Fletcher Hotels
</body>
</html>