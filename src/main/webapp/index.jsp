```jsp
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>One Piece | Grand Line</title>

    <!-- Bootstrap 5 Framework -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <style>
        body {
            background: #071421;
            color: white;
            font-family: Arial, sans-serif;
        }

        .navbar {
            background: #101f30;
        }

        .hero {
            min-height: 350px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 60px 20px;
            background: linear-gradient(135deg, #102b45, #8c271e);
        }

        .hero h1 {
            font-size: clamp(2.5rem, 6vw, 5rem);
            font-weight: 900;
            color: #ffc107;
            text-shadow: 3px 3px #000;
        }

        .character-card {
            background: #14283b;
            border: 1px solid #28445c;
            border-radius: 15px;
            overflow: hidden;
            height: 100%;
            transition: transform .3s, box-shadow .3s;
        }

        .character-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 10px 25px #0009;
        }

        .character-card img {
            width: 100%;
            height: 340px;
            object-fit: contain;
            background: #20384e;
            padding: 10px;
        }

        .character-card h5 {
            color: #ffc107;
            font-weight: bold;
        }

        .search-box {
            max-width: 550px;
        }

        .section-title {
            color: #ffc107;
            font-weight: bold;
        }

        footer {
            background: #101f30;
            padding: 25px;
            margin-top: 50px;
            text-align: center;
        }
    </style>
</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand fw-bold text-warning" href="#">
            ☠ GRAND LINE
        </a>

        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#menu">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="menu">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#characters">Characters</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#about">About</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero -->
<section class="hero" id="home">
    <div>
        <h1>ONE PIECE</h1>
        <h3 class="text-white">THE JOURNEY TO THE KING OF THE PIRATES</h3>
        <p class="lead mt-3">
            Explore the legendary pirates of the Grand Line.
        </p>
        <a href="#characters" class="btn btn-warning btn-lg fw-bold mt-2">
            Explore Characters
        </a>
    </div>
</section>

<!-- Characters -->
<section class="container py-5" id="characters">

    <h2 class="text-center section-title mb-4">
        THE PIRATE CHARACTERS
    </h2>

    <!-- Search -->
    <div class="search-box mx-auto mb-4">
        <input type="text" id="searchInput"
               class="form-control form-control-lg"
               placeholder="Search your favourite character...">
    </div>

    <!-- Filters -->
    <div class="d-flex flex-wrap justify-content-center gap-2 mb-5">
        <button class="btn btn-warning filter-btn" data-filter="all">All</button>
        <button class="btn btn-outline-warning filter-btn" data-filter="Straw Hats">Straw Hats</button>
        <button class="btn btn-outline-warning filter-btn" data-filter="Pirates">Pirates</button>
        <button class="btn btn-outline-warning filter-btn" data-filter="Others">Others</button>
    </div>

    <div class="row g-4" id="characterList">

        <!-- Straw Hat Pirates -->
        <div class="col-12 col-sm-6 col-lg-3 character-item" data-category="Straw Hats">
            <div class="character-card">
                <img src="images/luffy.png" alt="Monkey D. Luffy">
                <div class="p-3">
                    <h5>Monkey D. Luffy</h5>
                    <p>Captain of the Straw Hat Pirates</p>
                    <span class="badge bg-danger">Straw Hats</span>
                </div>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-lg-3 character-item" data-category="Straw Hats">
            <div class="character-card">
                <img src="images/zoro.png" alt="Roronoa Zoro">
                <div class="p-3">
                    <h5>Roronoa Zoro</h5>
                    <p>Swordsman of the crew</p>
                    <span class="badge bg-danger">Straw Hats</span>
                </div>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-lg-3 character-item" data-category="Straw Hats">
            <div class="character-card">
                <img src="images/nami.png" alt="Nami">
                <div class="p-3">
                    <h5>Nami</h5>
                    <p>Navigator of the crew</p>
                    <span class="badge bg-danger">Straw Hats</span>
                </div>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-lg-3 character-item" data-category="Straw Hats">
            <div class="character-card">
                <img src="images/usopp.png" alt="Usopp">
                <div class="p-3">
                    <h5>Usopp</h5>
                    <p>Sniper of the crew</p>
                    <span class="badge bg-danger">Straw Hats</span>
                </div>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-lg-3 character-item" data-category="Straw Hats">
            <div class="character-card">
                <img src="images/sanji.png" alt="Sanji">
                <div class="p-3">
                    <h5>Sanji</h5>
                    <p>Cook of the crew</p>
                    <span class="badge bg-danger">Straw Hats</span>
                </div>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-lg-3 character-item" data-category="Straw Hats">
            <div class="character-card">
                <img src="images/chopper.png" alt="Tony Tony Chopper">
                <div class="p-3">
                    <h5>Tony Tony Chopper</h5>
                    <p>Doctor of the crew</p>
                    <span class="badge bg-danger">Straw Hats</span>
                </div>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-lg-3 character-item" data-category="Straw Hats">
            <div class="character-card">
                <img src="images/robin.png" alt="Nico Robin">
                <div class="p-3">
                    <h5>Nico Robin</h5>
                    <p>Archaeologist of the crew</p>
                    <span class="badge bg-danger">Straw Hats</span>
                </div>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-lg-3 character-item" data-category="Straw Hats">
            <div class="character-card">
                <img src="images/franky.png" alt="Franky">
                <div class="p-3">
                    <h5>Franky</h5>
                    <p>Shipwright of the crew</p>
                    <span class="badge bg-danger">Straw Hats</span>
                </div>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-lg-3 character-item" data-category="Straw Hats">
            <div class="character-card">
                <img src="images/brook.png" alt="Brook">
                <div class="p-3">
                    <h5>Brook</h5>
                    <p>Musician of the crew</p>
                    <span class="badge bg-danger">Straw Hats</span>
                </div>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-lg-3 character-item" data-category="Straw Hats">
            <div class="character-card">
                <img src="images/jinbe.png" alt="Jinbe">
                <div class="p-3">
                    <h5>Jinbe</h5>
                    <p>Helmsman of the crew</p>
                    <span class="badge bg-danger">Straw Hats</span>
                </div>
            </div>
        </div>

        <!-- Other Pirates -->
        <div class="col-12 col-sm-6 col-lg-3 character-item" data-category="Pirates">
            <div class="character-card">
                <img src="images/ace.png" alt="Portgas D Ace">
                <div class="p-3">
                    <h5>Portgas D. Ace</h5>
                    <p>Fire Fist</p>
                    <span class="badge bg-primary">Pirates</span>
                </div>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-lg-3 character-item" data-category="Pirates">
            <div class="character-card">
                <img src="images/sabo.png" alt="Sabo">
                <div class="p-3">
                    <h5>Sabo</h5>
                    <p>Chief of Staff of the Revolutionary Army</p>
                    <span class="badge bg-primary">Pirates</span>
                </div>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-lg-3 character-item" data-category="Pirates">
            <div class="character-card">
                <img src="images/shanks.png" alt="Shanks">
                <div class="p-3">
                    <h5>Red-Haired Shanks</h5>
                    <p>Captain of the Red Hair Pirates</p>
                    <span class="badge bg-primary">Pirates</span>
                </div>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-lg-3 character-item" data-category="Pirates">
            <div class="character-card">
                <img src="images/law.png" alt="Trafalgar Law">
                <div class="p-3">
                    <h5>Trafalgar D. Water Law</h5>
                    <p>Surgeon of Death</p>
                    <span class="badge bg-primary">Pirates</span>
                </div>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-lg-3 character-item" data-category="Others">
            <div class="character-card">
                <img src="images/mihawk.png" alt="Dracule Mihawk">
                <div class="p-3">
                    <h5>Dracule Mihawk</h5>
                    <p>World's Greatest Swordsman</p>
                    <span class="badge bg-secondary">Others</span>
                </div>
            </div>
        </div>

        <div class="col-12 col-sm-6 col-lg-3 character-item" data-category="Others">
            <div class="character-card">
                <img src="images/kaido.png" alt="Kaido">
                <div class="p-3">
                    <h5>Kaido</h5>
                    <p>Former Emperor of the Sea</p>
                    <span class="badge bg-secondary">Others</span>
                </div>
            </div>
        </div>

    </div>
</section>

<section class="container text-center py-5" id="about">
    <h2 class="section-title">ABOUT THE GRAND LINE</h2>
    <p class="lead">
        Follow the adventures of pirates chasing their dreams
        across the legendary seas.
    </p>
</section>

<footer>
    <p class="mb-0">One Piece Fan Project | Built with Bootstrap 5 and JSP</p>
</footer>

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>
    const searchInput = document.getElementById("searchInput");
    const cards = document.querySelectorAll(".character-item");
    const filterButtons = document.querySelectorAll(".filter-btn");

    let selectedCategory = "all";

    function filterCharacters() {
        const search = searchInput.value.toLowerCase();

        cards.forEach(card => {
            const name = card.innerText.toLowerCase();
            const category = card.dataset.category;

            const matchesSearch = name.includes(search);
            const matchesCategory =
                selectedCategory === "all" ||
                category === selectedCategory;

            card.style.display =
                matchesSearch && matchesCategory ? "" : "none";
        });
    }

    searchInput.addEventListener("input", filterCharacters);

    filterButtons.forEach(button => {
        button.addEventListener("click", () => {
            selectedCategory = button.dataset.filter;

            filterButtons.forEach(btn => {
                btn.classList.remove("btn-warning");
                btn.classList.add("btn-outline-warning");
            });

            button.classList.remove("btn-outline-warning");
            button.classList.add("btn-warning");

            filterCharacters();
        });
    });
</script>

</body>
</html>
```
