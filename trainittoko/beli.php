<?php 
session_start();
//mendapat id_produk dari url
$id_produk = $_GET['id'];

//jk sudah ada produk itu dikeranjang, mk produk itu jmlhnya di +1
if(isset($_SESSION['keranjang'][$id_produk]))
{
	$_SESSION['keranjang'][$id_produk]+=1;
}
//selain itu (blm ada di kerajang) mk produk itu di beli 1
else
{
	$_SESSION['keranjang'][$id_produk] = 1;
}
//echo "<pre>";
//print_r($_SESSION);
//echo "</pre>";

//lanjutkan ke hal keranjang
echo "<script>alert ('produk telah masuk ke keranjang belanja');</script>";
echo "<script>location='keranjang.php';</script>";
 ?>