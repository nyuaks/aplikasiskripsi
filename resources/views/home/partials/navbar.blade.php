<style>
/* CSS untuk tampilan desktop */
.navbar {
    display: flex;
    justify-content: flex-end;
}

.navbar ul {
    display: flex;
    list-style: none;
}

.navbar li {
    margin-right: 20px;
}

/* CSS untuk tampilan smartphone */
@media screen and (max-width: 768px) {
    .navbar {
        justify-content: space-between;
        align-items: center;
    }

    .navbar ul {
        display: none;
        flex-direction: column;
        align-items: center;
        position: absolute;
        top: 70px; /* Sesuaikan dengan tinggi navbar Anda */
        left: 0;
        right: 0;
        background-color: #f9f9f9;
        border-top: 1px solid #ccc;
    }

    .navbar li {
        margin: 10px 0;
    }

    .mobile-nav-toggle {
        display: block;
        font-size: 24px;
        cursor: pointer;
    }
}
</style>
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
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->

    </div>
</header><!-- End Header -->
<script>
    const mobileNavToggle = document.querySelector('.mobile-nav-toggle');
    const navbarUl = document.querySelector('.navbar ul');

    mobileNavToggle.addEventListener('click', function() {
        navbarUl.classList.toggle('show');
    });
</script>

