<?php 
session_start();

// menghancurkan $_SESSIOM['pelanggan']
session_destroy();

echo "<script>alert('anda telah logout');</script>";
echo "<script>location='index.php';</script>";

 ?>