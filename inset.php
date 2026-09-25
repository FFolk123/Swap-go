
<?php

require 'connect_db.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
        http_response_code(405);
        exit('Method Not Allowed');
}

$name = trim($_POST['product-name'] ?? '');
$category = trim($_POST['product-category'] ?? '');
$price = filter_var($_POST['product-price'] ?? null, FILTER_VALIDATE_INT);
$description = trim($_POST['product-desc'] ?? '');
$address = trim($_POST['seller-address'] ?? '');
$conditionInput = $_POST['productCondition'] ?? '';
$condition = is_array($conditionInput)
        ? implode(', ', array_map('trim', $conditionInput))
        : trim($conditionInput);
$contact = trim($_POST['product-contact'] ?? '');
$ownerUid = trim($_POST['owner-uid'] ?? '');
$ownerEmail = trim($_POST['owner-email'] ?? '');

if ($name === '' || $category === '' || $price === false || $price < 0 ||
        $description === '' || $address === '' || $condition === '' || $contact === '') {
        http_response_code(400);
        exit('กรุณากรอกข้อมูลสินค้าให้ครบถ้วนและตรวจสอบราคาอีกครั้ง');
}

$sql = 'INSERT INTO addproducts (owner_uid, owner_email, name, category, price, description, address, `condition`, contact)
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)';
$statement = mysqli_prepare($connect, $sql);

if ($statement === false) {
        http_response_code(500);
        exit('ไม่สามารถเตรียมคำสั่งบันทึกข้อมูลได้');
}

mysqli_stmt_bind_param(
        $statement,
        'ssssissss',
        $ownerUid,
        $ownerEmail,
        $name,
        $category,
        $price,
        $description,
        $address,
        $condition,
        $contact
);

if (!mysqli_stmt_execute($statement)) {
        http_response_code(500);
        exit('ไม่สามารถบันทึกข้อมูลสินค้าได้');
}

mysqli_stmt_close($statement);
mysqli_close($connect);
header('Location: index.html');
exit;
?>