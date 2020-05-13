<h2>Ubah Pelanggan</h2>
<?php 
$ambil=$koneksi->query("SELECT * FROM pelanggan WHERE id_pelanggan='$_GET[id]'");
$pecah=$ambil->fetch_assoc();

 
 ?>
 <form method="post" enctype="multipart/form-data">
 	<div class="form-group">
 		<label>Nama</label>
 		<input type="text" name="nama" class="form-control" value="<?php echo $pecah['nama_pelanggan']; ?>">
 	</div>
 	<div class="form-group">
 		<label>Email</label>
 			<input type="email" name="email" class="form-control" value="<?php echo $pecah['email_pelanggan']; ?>">
 	</div>
 	<div>
 		<label>password</label>
 		<input type="password" name="password" class="form-control" value="<?php echo $pecah['password_pelanggan']; ?>">
 	</div>
 	<div class="form-group">
 		<label>telp/HP</label>
 		<input type="text" name="telepon" class="form-control" value="<?php echo $pecah['telepon_pelanggan']; ?>">
 	</div>
 	<div class="form-group">
 		<label>Alamat</label>
 		<textarea name="alamat" class="form-control" rows="10"><?php echo $pecah['alamat_pelanggan']; ?></textarea>
 	</div>
 	<button class="btn btn-primary" name="ubah">Ubah</button>
 </form>

 <?php 
if(isset($_POST['ubah']))
{
	$koneksi->query("UPDATE pelanggan SET nama_pelanggan='$_POST[nama]',email_pelanggan='$_POST[email]',password_pelanggan='$_POST[password]',telepon_pelanggan='$_POST[telepon]',alamat_pelanggan='$_POST[alamat]' WHERE id_pelanggan='$_GET[id]'");

	echo "<script>alert('data telah di ubah');</script>";
	echo "<div class='alert alert-info'>Data Tersimpan</div>";
 	echo "<meta http-equiv='refresh' content='1;url=index.php?halaman=pelanggan'>";
}
?>
