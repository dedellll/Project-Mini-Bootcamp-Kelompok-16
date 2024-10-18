<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color:#ffffff;box-shadow:1px 1px 5px grey;height:65px;font-size:15px;font-weight:600;" id="mainNav">
  <div class="container">
    <a class="navbar-brand" href="index.php" style="display: flex; align-items: center;">
      <img src="assets/img/logo.jpg" width="100" height="60" alt="Logo" style="object-fit: contain;"> <span class="text-dark font-weight-bold">OceanTix</span>
    </a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link js-scroll-trigger" style="color:	#00CED1;" href="index.php">Beranda <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <?php if ($_SESSION) : ?>
            <a class="nav-link js-scroll-trigger text-warning" href="#">Hai, <?php echo $nama; ?></a>
          <?php else : ?>
            <a class="nav-link js-scroll-trigger text-primary" href="register.php">Daftar</a>
          <?php endif ?>
        </li>
        <li class="nav-item">
          <?php if ($_SESSION) : ?>
            <a class="nav-link js-scroll-trigger text-primary" href="profil_user.php">Akun</a>
          <?php endif ?>
        </li>
        <li class="nav-item">
          <?php if ($_SESSION) : ?>
            <a class="nav-link js-scroll-trigger text-warning" href="logout.php">Logout</a>
          <?php else : ?>
            <a class="nav-link js-scroll-trigger text-success" href="login.php">Login</a>
          <?php endif ?>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger text-info" style="color:	#00CED1;" href="contactus.php">Kontak Kami</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
