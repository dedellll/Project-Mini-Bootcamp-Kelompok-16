<?php
    include 'koneksi.php';
    if ($_SESSION) {
        $nama = $_SESSION["nama"];
        
    }
    else 
        header("Location: login.php");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beranda</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="assets/index.css">
    <link rel="stylesheet" type="text/css" href="assets/fontawesome/css/all.min.css">
</head>
<body>
    <?php include 'layout/navbar.php';?>

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="assets/img/kepri.jpg" class="d-block w-100" alt="Fist slide">
          <div class="carousel-caption d-none d-md-block">
            <p class="display-4" style=" color:white;
                                        text-align:center;
                                        margin-top:-500px;
                                        font-size:60px;">Selamat Datang di <strong>OceanTix</strong></p>
            <hr class="my-4" style="border-color:#fbffc1;width:70px;border-width:4px">
            <p class="lead"style="color:white;font-size:20px;">OceanTix adalah platform terbaik untuk membeli tiket speed boat di Kepulauan Riau. Dengan kemudahan akses yang ditawarkan, speed boat menjadi pilihan utama masyarakat untuk melakukan perjalanan antar pulau. Apakah Anda mengalami kesulitan dalam mencari tiket? Jangan khawatir, karena kami memiliki solusi tepat untuk Anda. Dengan e-Ticket dari OceanTix, Anda hanya perlu beberapa klik untuk memesan tiket. Untuk memulai pemesanan, cukup klik tombol "Cari Tiket" di bawah ini.</p>
            <a class="btn btn-warning btn-lg" href="caritiket.php" role="button">Cari Tiket</a>
          </div>
        </div>
        <div class="carousel-item">
          <img src="assets/img/tnj.jpg" class="d-block w-100" alt="Second slide">
          <div class="carousel-caption d-none d-md-block">
            <h1 style="margin-top:-440px;">Tanjungpinang</h1>
            <p>Keindahan dan pesona Pulau Tanjungpinang memiliki berbagai daya tarik yang menjadikannya destinasi menarik. Pulau ini terkenal dengan pemandangan pantai yang menakjubkan dan menawan. Dengan langit biru yang cerah, air laut yang berkilau, dan garis pantai berpasir putih yang luas, Anda akan terpesona dengan keindahan alamnya. Selain itu, ketika Anda mengunjungi Tanjungpinang, Anda juga dapat menikmati pengalaman matahari terbit dan terbenam yang memukau dalam satu hari, karena pantai-pantai di Tanjungpinang menghadap ke arah timur dan barat.</p>
            <a class="btn btn-warning btn-lg" href="caritiket.php" role="button">Cari Tiket</a>
          </div>
        </div>
        <div class="carousel-item">
          <img src="assets/img/nusa.jpg" class="d-block w-100" alt="Third Slide">
          <div class="carousel-caption d-none d-md-block">
            <h1 style="margin-top:-440px;">Batam</h1>
            <p>Pulau Batam adalah salah satu destinasi wisata populer di Indonesia. Dikenal dengan pantai-pantainya yang indah dan masih alami, serta pemandangan tebing yang menakjubkan, Batam telah menarik perhatian baik wisatawan lokal maupun mancanegara. Di pulau ini, Anda dapat menemukan pantai-pantai yang eksotis dan instagramable, seperti Pantai Nongsa, Pantai Melur, dan Pantai Tanjung Bemban. Selain itu, Batam juga memiliki berbagai tempat wisata menarik lainnya, seperti Bukit Senyum dan berbagai atraksi lainnya yang pasti akan memikat hati pengunjung.</p>
            <a class="btn btn-warning btn-lg" href="caritiket.php" role="button">Cari Tiket</a>
          </div>
        </div>
        <div class="carousel-item">
          <img src="assets/img/natuna1.jpg" class="d-block w-100" alt="fourth Slide">
          <div class="carousel-caption d-none d-md-block">
            <h1 style="margin-top:-440px;">Natuna</h1>
            <p>Pulau Natuna merupakan salah satu permata tersembunyi di Indonesia yang menawarkan keindahan alam yang memukau. Dikenal dengan pantai-pantainya yang masih perawan dan pemandangan alam yang menawan, Natuna telah menjadi tujuan menarik bagi wisatawan. Pulau ini memiliki beragam pantai eksotis dan tempat menarik, seperti Pantai Sisiak, Pantai Tanjung, dan Danau Biru. Selain itu, keindahan bawah laut Natuna juga tidak kalah menakjubkan, menjadikannya tempat yang ideal untuk snorkeling dan diving. Natuna menawarkan pengalaman wisata yang unik dan menyegarkan bagi siapa pun yang ingin melarikan diri dari keramaian.</p>
            <a class="btn btn-warning btn-lg" href="caritiket.php" role="button">Cari Tiket</a>
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>