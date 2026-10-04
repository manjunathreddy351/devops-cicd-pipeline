<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Naruto Shinobi World</title>

    <style>

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            background: #080b12;
            color: white;
            font-family: Arial, sans-serif;
        }

        header {
            min-height: 500px;

            display: flex;
            align-items: center;

            padding: 60px 8%;

            background:
                linear-gradient(
                    rgba(0,0,0,.55),
                    rgba(0,0,0,.9)
                ),
                url("images/naruto.png");

            background-size: cover;
            background-position: center;
        }

        .hero {

            max-width: 650px;

        }

        .hero h1 {

            font-size: 70px;

            color: #ff7200;

            margin-bottom: 20px;

        }

        .hero h2 {

            font-size: 32px;

            margin-bottom: 20px;

        }

        .hero p {

            font-size: 18px;

            line-height: 1.7;

            color: #ddd;

        }

        nav {

            position: sticky;

            top: 0;

            z-index: 100;

            padding: 20px 8%;

            background: #050609;

            border-bottom: 1px solid #333;

            display: flex;

            justify-content: space-between;

        }

        nav h2 {

            color: #ff7200;

        }

        nav a {

            color: white;

            text-decoration: none;

            margin-left: 25px;

        }

        nav a:hover {

            color: #ff7200;

        }

        .section {

            padding: 70px 7%;

        }

        .title {

            text-align: center;

            margin-bottom: 50px;

        }

        .title h2 {

            font-size: 45px;

            color: #ff7200;

        }

        .title p {

            margin-top: 10px;

            color: #999;

        }

        .characters {

            display: grid;

            grid-template-columns:
                repeat(auto-fit, minmax(230px, 1fr));

            gap: 25px;

        }

        .card {

            background: #121722;

            border: 1px solid #292f3d;

            border-radius: 15px;

            overflow: hidden;

            transition: .3s;

        }

        .card:hover {

            transform: translateY(-10px);

            border-color: #ff7200;

            box-shadow:
                0 15px 40px rgba(255,114,0,.2);

        }

        .character-image {

            height: 360px;

            display: flex;

            justify-content: center;

            align-items: flex-end;

            background:
                radial-gradient(
                    circle,
                    #3b200f,
                    #10131c
                );

            overflow: hidden;

        }

        .character-image img {

            height: 100%;

            width: 100%;

            object-fit: contain;

            transition: .3s;

        }

        .card:hover img {

            transform: scale(1.05);

        }

        .details {

            padding: 20px;

        }

        .details h3 {

            font-size: 24px;

            margin-bottom: 8px;

        }

        .village {

            color: #ff7200;

            font-size: 14px;

            margin-bottom: 12px;

        }

        .details p {

            color: #aaa;

            line-height: 1.5;

        }

        .badge {

            display: inline-block;

            margin-top: 15px;

            padding: 7px 12px;

            background: #252b38;

            border-radius: 20px;

            color: #ddd;

            font-size: 12px;

        }

        footer {

            text-align: center;

            padding: 40px;

            background: #050609;

            color: #777;

        }

        footer span {

            color: #ff7200;

        }

        @media(max-width:700px) {

            .hero h1 {

                font-size: 45px;

            }

            nav .links {

                display: none;

            }

        }

    </style>

</head>


<body>


<nav>

    <h2>忍 NARUTO</h2>

    <div class="links">

        <a href="#home">Home</a>

        <a href="#characters">Characters</a>

    </div>

</nav>


<header id="home">

    <div class="hero">

        <h1>NARUTO</h1>

        <h2>The Shinobi World</h2>

        <p>

            Welcome to the world of shinobi.

            Explore Naruto Uzumaki, Sasuke Uchiha,

            Sakura Haruno, Kakashi Hatake,

            the legendary Uchiha clan,

            Akatsuki and the greatest ninja

            in the history of the Hidden Villages.

        </p>

    </div>

</header>


<section class="section" id="characters">

    <div class="title">

        <h2>Legendary Shinobi</h2>

        <p>Meet the characters of the Naruto universe</p>

    </div>


    <div class="characters">


        <!-- NARUTO -->

        <div class="card">

            <div class="character-image">

                <img src="images/naruto.png"
                     alt="Naruto Uzumaki">

            </div>

            <div class="details">

                <h3>Naruto Uzumaki</h3>

                <div class="village">
                    Hidden Leaf Village
                </div>

                <p>
                    The hero of the story and
                    future Seventh Hokage.
                </p>

                <span class="badge">
                    Jinchuriki
                </span>

            </div>

        </div>


        <!-- SASUKE -->

        <div class="card">

            <div class="character-image">

                <img src="images/sasuke.png"
                     alt="Sasuke Uchiha">

            </div>

            <div class="details">

                <h3>Sasuke Uchiha</h3>

                <div class="village">
                    Uchiha Clan
                </div>

                <p>
                    The last surviving member
                    of the Uchiha clan.
                </p>

                <span class="badge">
                    Sharingan
                </span>

            </div>

        </div>


        <!-- SAKURA -->

        <div class="card">

            <div class="character-image">

                <img src="images/sakura.png"
                     alt="Sakura Haruno">

            </div>

            <div class="details">

                <h3>Sakura Haruno</h3>

                <div class="village">
                    Hidden Leaf Village
                </div>

                <p>
                    A powerful medical ninja
                    trained by Tsunade.
                </p>

                <span class="badge">
                    Medical Ninja
                </span>

            </div>

        </div>


        <!-- KAKASHI -->

        <div class="card">

            <div class="character-image">

                <img src="images/kakashi.png"
                     alt="Kakashi Hatake">

            </div>

            <div class="details">

                <h3>Kakashi Hatake</h3>

                <div class="village">
                    Hidden Leaf Village
                </div>

                <p>
                    The Copy Ninja and leader
                    of Team 7.
                </p>

                <span class="badge">
                    Sharingan
                </span>

            </div>

        </div>


        <!-- ITACHI -->

        <div class="card">

            <div class="character-image">

                <img src="images/itachi.png"
                     alt="Itachi Uchiha">

            </div>

            <div class="details">

                <h3>Itachi Uchiha</h3>

                <div class="village">
                    Uchiha Clan
                </div>

                <p>
                    One of the most talented
                    Uchiha shinobi.
                </p>

                <span class="badge">
                    Mangekyo Sharingan
                </span>

            </div>

        </div>


        <!-- MADARA -->

        <div class="card">

            <div class="character-image">

                <img src="images/madara.png"
                     alt="Madara Uchiha">

            </div>

            <div class="details">

                <h3>Madara Uchiha</h3>

                <div class="village">
                    Uchiha Clan
                </div>

                <p>
                    One of the most powerful
                    shinobi in history.
                </p>

                <span class="badge">
                    Rinnegan
                </span>

            </div>

        </div>


        <!-- MINATO -->

        <div class="card">

            <div class="character-image">

                <img src="images/minato.png"
                     alt="Minato Namikaze">

            </div>

            <div class="details">

                <h3>Minato Namikaze</h3>

                <div class="village">
                    Fourth Hokage
                </div>

                <p>
                    The legendary Yellow Flash
                    of the Hidden Leaf.
                </p>

                <span class="badge">
                    Flying Raijin
                </span>

            </div>

        </div>


        <!-- JIRAIYA -->

        <div class="card">

            <div class="character-image">

                <img src="images/jiraiya.png"
                     alt="Jiraiya">

            </div>

            <div class="details">

                <h3>Jiraiya</h3>

                <div class="village">
                    Legendary Sannin
                </div>

                <p>
                    Naruto's legendary teacher
                    and mentor.
                </p>

                <span class="badge">
                    Sage Mode
                </span>

            </div>

        </div>


        <!-- GAARA -->

        <div class="card">

            <div class="character-image">

                <img src="images/gaara.png"
                     alt="Gaara">

            </div>

            <div class="details">

                <h3>Gaara</h3>

                <div class="village">
                    Hidden Sand Village
                </div>

                <p>
                    The Kazekage and former
                    jinchuriki of Shukaku.
                </p>

                <span class="badge">
                    Sand Jutsu
                </span>

            </div>

        </div>


        <!-- HINATA -->

        <div class="card">

            <div class="character-image">

                <img src="images/hinata.png"
                     alt="Hinata Hyuga">

            </div>

            <div class="details">

                <h3>Hinata Hyuga</h3>

                <div class="village">
                    Hyuga Clan
                </div>

                <p>
                    A skilled Byakugan user
                    from the Hidden Leaf.
                </p>

                <span class="badge">
                    Byakugan
                </span>

            </div>

        </div>


        <!-- SHIKAMARU -->

        <div class="card">

            <div class="character-image">

                <img src="images/shikamaru.png"
                     alt="Shikamaru Nara">

            </div>

            <div class="details">

                <h3>Shikamaru Nara</h3>

                <div class="village">
                    Nara Clan
                </div>

                <p>
                    A genius strategist and
                    master of shadow techniques.
                </p>

                <span class="badge">
                    Shadow Jutsu
                </span>

            </div>

        </div>


    </div>

</section>


<footer>

    <p>
        <span>NARUTO</span> Shinobi World
    </p>

    <p style="margin-top:10px;">
        Manjuapp CI/CD Project
    </p>

</footer>


</body>

</html>
