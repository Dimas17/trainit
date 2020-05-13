<!-- nav bar -->
<nav class="navbar navbar-inverse">
		<div class="Container">
		<ul class="nav navbar-nav">
			<li><a href="index.php"><span class="glyphicon glyphicon-home"></span> Home</a></li>
			<li><a href="keranjang.php"><span class="glyphicon glyphicon-shopping-cart"></span> Keranjang</a></li>
			<!-- jk sudah login(ada session pelanggan)-->
			<?php if (isset($_SESSION["pelanggan"])): ?>
			<li><a href="riwayat.php">Riwayat Belanja</a></li>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="logout.php"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
			</ul>
			
			<!-- selain itu blm login(blm ada session pelanggan)-->
			<?php else: ?>
				<ul class="nav navbar-nav navbar-right">
				<li><a href="daftar.php"><span class="glyphicon glyphicon-user"></span> Daftar</a></li>
				<li><a href="login.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
			<?php endif ?>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Kategori
					<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="peralatanmandi.php">Peralatan mandi</a></li>
						<li><a href="#">CSS</a></li>
						<li><a href="#">Bootstrap</a></li> 
					</ul>
				</li>
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="cari produk">
				</div>
				<button type="cari" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
			</form>
			<li><a href="checkout.php">Checkout</a></li>
			
		</ul>
		</div>
	</nav>