<?php
// Password asli
$password = "admin";

// Menghasilkan hash dari password
$hashedPassword = password_hash($password, PASSWORD_DEFAULT);

// Menampilkan hasil hash
echo "Password hash untuk 'admin':<br>";
echo $hashedPassword;
