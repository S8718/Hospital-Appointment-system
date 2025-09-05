<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    .navbar {
        background-color: #66d7ee !important;
        /* background-color: transparent !important;*/
    }

    .nav-link {
        font-weight: 500;
        color: white !important;
        transition: color 0.3s ease;
    }
    .nav-link:hover {
        color: #ffd700 !important;
    }
    .navbar-nav {
        margin: 0 auto;
        gap: 25px;
    }
    .btn-custom {
        padding: 6px 15px;
        border-radius: 20px;
        font-weight: 500;
        transition: 0.3s;
    }
    .navbar .btn-custom {
        padding: 6px 15px;
        border-radius: 25px !important; /* yahan border-radius set */
        font-weight: 500;
        transition: 0.3s;
    }
    .navbar .btn-login {
        background-color: transparent !important;
        border: 2px solid white !important;
        color: white !important;
    }
    .navbar .btn-login:hover {
        background-color: aliceblue !important;
        color: black !important;
    }
    .navbar .btn-register {
        background-color: #ff7f50 !important;
        border: none !important;
        color: white !important;
    }
    .navbar .btn-register:hover {
        background-color: #e56b3c !important;
    }
    .welcome-text {
        color: white;
        font-weight: 500;
        margin-right: 10px;
    }
    .navbar-toggler {
        border: none;
    }
</style>

<nav class="navbar navbar-expand-lg fixed-top">
    <div class="container">
        <a class="navbar-brand text-white fw-bold" href="index.jsp">
            <img src="images/medical 4.png" style="height: 50px; width: auto;">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="About.jsp">About</a></li>
                <li class="nav-item"><a class="nav-link" href="index.jsp#services">Services</a></li>
                <li class="nav-item"><a class="nav-link" href="doctor_login.jsp">Doctors</a></li>
                <li class="nav-item"><a class="nav-link" href="Contact.jsp">Contact</a></li>
            </ul>

            <div class="d-flex gap-2 ms-auto">
                <a href="login.jsp" class="btn btn-custom btn-login">Login</a>
                <a href="registration.jsp" class="btn btn-custom btn-register">Register</a>
            </div>
        </div>
    </div>
</nav>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<!-- Close navbar on link click (mobile) -->
<script>
    document.querySelectorAll('.nav-link').forEach(link => {
        link.addEventListener('click', () => {
            const navbarCollapse = document.querySelector('.navbar-collapse');
            const bsCollapse = bootstrap.Collapse.getInstance(navbarCollapse);
            if (bsCollapse) {
                bsCollapse.hide();
            }
        });
    });
</script>
