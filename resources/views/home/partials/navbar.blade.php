<!-- ======= Header ======= -->
<header id="header" class="fixed-top bg-primary">
    <div class="container d-flex align-items-center justify-content-between">

        <h1 class="logo"><a href="/">{{ env('APP_NAME') }}</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

        <nav id="navbar" class="navbar">
            <ul>
                @auth
                <li><a class="nav-link scrollto" href="/home">Home</a></li>
                @endauth
                @guest
                <li><a class="nav-link scrollto" href="/">Home</a></li>
                @endguest
                <li><a class="nav-link scrollto" href="#about">Tentang</a></li>
                <li><a class="nav-link scrollto" href="#acara">Acara</a></li>
                <li><a class="nav-link scrollto" href="#siaran">Siaran</a></li>
                <li><a class="nav-link scrollto" href="/g/responden/create">Responden</a></li>
                @guest
                <li><a class="nav-link scrollto" href="/login">Login</a></li>
                @endguest
            </ul>
            <i id="mobile-nav-toggle" class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->
    </div>
    <script>
    // Mengambil elemen-elemen yang diperlukan
    const mobileNavToggle = document.getElementById('mobile-nav-toggle');
    const navbar = document.getElementById('navbar');

    // Menambahkan event listener saat tombol toggle di klik
    mobileNavToggle.addEventListener('click', function() {
        // Toggle class 'active' pada elemen navbar
        navbar.classList.toggle('active');
    });

    // Menambahkan event listener pada saat window di-resize
    window.addEventListener('resize', function() {
        // Jika lebar window lebih besar dari 768px, maka remove class 'active'
        if (window.innerWidth > 768) {
            navbar.classList.remove('active');
        }
    });
</script>
</header><!-- End Header -->
