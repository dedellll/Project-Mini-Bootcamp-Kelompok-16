<?php
include 'koneksi.php';
if ($_SESSION) {
    $nama = $_SESSION["nama"];
}else {
    header("Location: login.php");
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/contactus.css">
    <link rel="stylesheet" type="text/css" href="assets/fontawesome/css/all.min.css">

    <title>Kontak Kami</title>
  </head>
  <body>

    <?php include 'layout/navbar.php';?>

    <section class="jumbotron text-center">
        <div class="container">
            <h1 style="margin-top:30px;" class="jumbotron-heading">Kontak Kami</h1>
            <p class="lead text-muted mb-0">Anda dapat mengirim pesan kepada kami dengan cara mengisi form dibawah ini</p>
        </div>
    </section>
    <div class="container">
        <div class="row">
            <div class="col">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php">Beranda</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Kontak Kami</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header bg-primary text-white"><i class="fa fa-envelope"></i> Isi Form
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="form-group">
                                <label for="name">Nama</label>
                                <input type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Masukkan nama" required autocomplete="off">
                            </div>
                            <div class="form-group">
                                <label for="email">Alamat Email</label>
                                <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Masukkan email" required autocomplete="off">
                            </div>
                            <div class="form-group">
                                <label for="message">Pesan</label>
                                <textarea class="form-control" id="message" rows="6" required></textarea>
                            </div>
                            <div class="mx-auto">
                            <button type="submit" class="btn btn-primary text-right">Kirim</button></div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-4">
                <div class="card bg-light mb-3">
                    <div class="card-header bg-success text-white "><i class="fa fa-home"></i> Kontak Kami </div>
                    <div class="card-body">
                        <p>@ Kelompok 16</p>
                        <p>Rafi Antaresa - 2101020079</p>
                        <p>Delima Pakpahan - 2201020055</p>
                        <p>Nehemia Hia - 2201020143</p>
                        <p>Salsa Nabilla - 2401020059</p>
                        <p>Email : kelompok16@gmail.com</p>
                    </div>

                </div>
            </div>
        </div>
    </div>

        <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
  </body>
</html>