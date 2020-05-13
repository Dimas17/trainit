<h2>Tambah Pelanggan</h2>
<form method="post" enctype="multipart/form-data">
	<div class="form-group">
		<label>nama</label>
		<input type="text" class="form-control" name="nama">
	</div>
	<div class="form-group">
		<label>Email</label>
		<input type="email" class="form-control" name="email">
	</div>
	<div class="form-group">
		<label>Password</label>
		<input type="password" class="form-control" name="password">
	</div>
	<div class="form-group">
		<label>Telp/HP</label>
		<input type="text" class="form-control" name="telepon">
	</div>
	<div class="form-group">
		<label>Alamat</label>
		<textarea class="form-control" name="alamat" rows="10"></textarea>
	</div>
	<button class="btn btn-primary" name="save">simpan</button>
</form>
<?php 
if (isset($_POST['save']))
{
	//mengambil isian nama,email,password,alamat,telepon
							$nama = $_POST["nama"];
							$email = $_POST["email"];
							$password = $_POST["password"];

							$alamat = $_POST["alamat"];
							$telepon = $_POST["telepon"];

							//cek apakah sudah digunakan
							$ambil = $koneksi->query("SELECT * FROM pelanggan WHERE email_pelanggan='$email'");
							$yangcocok = $ambil->num_rows;
							if ($yangcocok==1)
							 {
							 	echo "<script>alert('pendaftaran gagal, email sudah digunakan');</script>";
								echo "<meta http-equiv='refresh' content='1;url=index.php?halaman=tambahpelanggan'>";
							}
							else
	{
	$koneksi->query("INSERT INTO pelanggan(nama_pelanggan,email_pelanggan,password_pelanggan,telepon_pelanggan,alamat_pelanggan)VALUES('$nama','$email','$password','$telepon','$alamat')");

	echo "<div class='alert alert-info'>Data Tersimpan</div>";
 	echo "<meta http-equiv='refresh' content='1;url=index.php?halaman=pelanggan'>";
 	}
}
 ?>
