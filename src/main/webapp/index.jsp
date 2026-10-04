<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Shinobi World | Naruto</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #090b12;
            color: white;
        }

        /* NAVBAR */

        nav {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: rgba(5, 7, 12, 0.95);
            border-bottom: 1px solid #252938;
            padding: 18px 7%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 26px;
            font-weight: bold;
            color: #ff6b00;
        }

        .logo span {
            color: white;
        }

        nav a {
            color: #ddd;
            text-decoration: none;
            margin-left: 25px;
        }

        nav a:hover {
            color: #ff6b00;
        }

        /* HERO */

        .hero {
            min-height: 520px;
            display: flex;
            align-items: center;
            padding: 70px 8%;
            background:
                radial-gradient(circle at 80% 30%, #592000 0%, transparent 30%),
                linear-gradient(120deg, #111522, #08090e);
        }

        .hero-content {
            max-width: 700px;
        }

        .hero h1 {
            font-size: clamp(45px, 8vw, 90px);
            line-height: 0.95;
            margin-bottom: 20px;
        }

        .orange {
            color: #ff6b00;
        }

        .hero p {
            color: #b8bcc9;
            font-size: 18px;
            line-height: 1.7;
            margin-bottom: 30px;
        }

        .hero-button {
            display: inline-block;
            background: #ff6b00;
            color: white;
            padding: 14px 28px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
        }

        /* SECTION */

        section {
            padding: 70px 7%;
        }

        .section-title {
            text-align: center;
            margin-bottom: 40px;
        }

        .section-title h2 {
            font-size: 42px;
            margin-bottom: 10px;
        }

        .section-title p {
            color: #888f9f;
        }

        /* SEARCH */

        .search-box {
            max-width: 700px;
            margin: 0 auto 30px;
        }

        .search-box input {
            width: 100%;
            padding: 17px 20px;
            background: #141722;
            border: 1px solid #303545;
            border-radius: 10px;
            color: white;
            font-size: 16px;
            outline: none;
        }

        .search-box input:focus {
            border-color: #ff6b00;
        }

        /* FILTERS */

        .filters {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            justify-content: center;
            margin-bottom: 35px;
        }

        .filter {
            border: 1px solid #343847;
            background: #131620;
            color: #ddd;
            padding: 10px 18px;
            border-radius: 30px;
            cursor: pointer;
        }

        .filter:hover,
        .filter.active {
            background: #ff6b00;
            color: white;
            border-color: #ff6b00;
        }

        /* CHARACTER GRID */

        .characters {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 20px;
        }

        .character {
            background: #12151f;
            border: 1px solid #272c3b;
            border-radius: 14px;
            overflow: hidden;
            transition: 0.25s;
        }

        .character:hover {
            transform: translateY(-7px);
            border-color: #ff6b00;
            box-shadow: 0 15px 40px rgba(0,0,0,.35);
        }

        .avatar {
            height: 170px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 70px;
            background:
                radial-gradient(circle, #3a1c0b, #141722 65%);
        }

        .info {
            padding: 20px;
        }

        .info h3 {
            font-size: 21px;
            margin-bottom: 7px;
        }

        .village {
            color: #ff8b3d;
            font-size: 13px;
            margin-bottom: 10px;
        }

        .info p {
            color: #9097a7;
            font-size: 14px;
            line-height: 1.5;
        }

        .badge {
            display: inline-block;
            margin-top: 12px;
            padding: 5px 9px;
            border-radius: 5px;
            background: #252a38;
            color: #bbb;
            font-size: 11px;
        }

        /* FOOTER */

        footer {
            text-align: center;
            padding: 40px;
            background: #05060a;
            color: #747987;
            border-top: 1px solid #222633;
        }

        footer strong {
            color: #ff6b00;
        }

        @media(max-width: 700px) {

            nav {
                padding: 15px 5%;
            }

            nav .links {
                display: none;
            }

            .hero {
                padding: 60px 7%;
            }

            section {
                padding: 50px 5%;
            }
        }
    </style>
</head>

<body>

<nav>
    <div class="logo">忍 NARUTO <span>SHINOBI</span></div>

    <div class="links">
        <a href="#home">Home</a>
        <a href="#characters">Characters</a>
        <a href="#villages">Villages</a>
        <a href="#about">About</a>
    </div>
</nav>


<!-- HERO -->

<section class="hero" id="home">

    <div class="hero-content">

        <h1>
            THE WORLD OF
            <span class="orange">NARUTO</span>
        </h1>

        <p>
            Enter the world of shinobi, legendary ninja clans,
            powerful jutsu, tailed beasts and unforgettable battles.
        </p>

        <a class="hero-button" href="#characters">
            Explore Characters
        </a>

    </div>

</section>


<!-- CHARACTERS -->

<section id="characters">

    <div class="section-title">

        <h2>Shinobi Characters</h2>

        <p>
            Explore heroes, villains, legends and powerful shinobi.
        </p>

    </div>


    <div class="search-box">

        <input
            type="text"
            id="search"
            placeholder="Search Naruto, Sasuke, Itachi..."
            onkeyup="searchCharacters()"
        >

    </div>


    <div class="filters">

        <button class="filter active" onclick="filterCharacters('all', this)">
            All
        </button>

        <button class="filter" onclick="filterCharacters('leaf', this)">
            Hidden Leaf
        </button>

        <button class="filter" onclick="filterCharacters('akatsuki', this)">
            Akatsuki
        </button>

        <button class="filter" onclick="filterCharacters('uchiha', this)">
            Uchiha
        </button>

        <button class="filter" onclick="filterCharacters('kage', this)">
            Kage
        </button>

        <button class="filter" onclick="filterCharacters('legend', this)">
            Legends
        </button>

    </div>


    <div class="characters" id="characterGrid">


        <!-- TEAM 7 -->

        <div class="character leaf">
            <div class="avatar">🍥</div>
            <div class="info">
                <h3>Naruto Uzumaki</h3>
                <div class="village">Hidden Leaf • Team 7</div>
                <p>The energetic ninja who dreams of becoming Hokage.</p>
                <span class="badge">Jinchuriki</span>
            </div>
        </div>


        <div class="character uchiha leaf">
            <div class="avatar">👁️</div>
            <div class="info">
                <h3>Sasuke Uchiha</h3>
                <div class="village">Hidden Leaf • Uchiha</div>
                <p>A powerful Uchiha driven by revenge and redemption.</p>
                <span class="badge">Sharingan</span>
            </div>
        </div>


        <div class="character leaf">
            <div class="avatar">🌸</div>
            <div class="info">
                <h3>Sakura Haruno</h3>
                <div class="village">Hidden Leaf • Team 7</div>
                <p>A powerful medical ninja trained by Tsunade.</p>
                <span class="badge">Medical Ninja</span>
            </div>
        </div>


        <div class="character leaf">
            <div class="avatar">⚡</div>
            <div class="info">
                <h3>Kakashi Hatake</h3>
                <div class="village">Hidden Leaf • Jonin</div>
                <p>The legendary Copy Ninja and leader of Team 7.</p>
                <span class="badge">Sharingan</span>
            </div>
        </div>


        <!-- KONOHA -->

        <div class="character leaf">
            <div class="avatar">🦌</div>
            <div class="info">
                <h3>Shikamaru Nara</h3>
                <div class="village">Hidden Leaf</div>
                <p>A brilliant strategist with an incredible tactical mind.</p>
                <span class="badge">Shadow Jutsu</span>
            </div>
        </div>


        <div class="character leaf">
            <div class="avatar">🐗</div>
            <div class="info">
                <h3>Ino Yamanaka</h3>
                <div class="village">Hidden Leaf</div>
                <p>A skilled kunoichi from the Yamanaka clan.</p>
                <span class="badge">Mind Jutsu</span>
            </div>
        </div>


        <div class="character leaf">
            <div class="avatar">🍖</div>
            <div class="info">
                <h3>Choji Akimichi</h3>
                <div class="village">Hidden Leaf</div>
                <p>A powerful member of the Akimichi clan.</p>
                <span class="badge">Expansion Jutsu</span>
            </div>
        </div>


        <div class="character leaf">
            <div class="avatar">🐺</div>
            <div class="info">
                <h3>Kiba Inuzuka</h3>
                <div class="village">Hidden Leaf</div>
                <p>A ninja who fights alongside his loyal companion Akamaru.</p>
                <span class="badge">Beast Ninja</span>
            </div>
        </div>


        <div class="character leaf">
            <div class="avatar">🐞</div>
            <div class="info">
                <h3>Shino Aburame</h3>
                <div class="village">Hidden Leaf</div>
                <p>A calm shinobi who commands chakra-consuming insects.</p>
                <span class="badge">Aburame Clan</span>
            </div>
        </div>


        <div class="character leaf">
            <div class="avatar">🥋</div>
            <div class="info">
                <h3>Rock Lee</h3>
                <div class="village">Hidden Leaf</div>
                <p>A taijutsu specialist who refuses to give up.</p>
                <span class="badge">Taijutsu</span>
            </div>
        </div>


        <div class="character leaf">
            <div class="avatar">🎯</div>
            <div class="info">
                <h3>Tenten</h3>
                <div class="village">Hidden Leaf</div>
                <p>A weapons specialist with an enormous arsenal.</p>
                <span class="badge">Weapons</span>
            </div>
        </div>


        <div class="character leaf">
            <div class="avatar">👁️</div>
            <div class="info">
                <h3>Neji Hyuga</h3>
                <div class="village">Hidden Leaf • Hyuga</div>
                <p>A prodigy of the Hyuga clan and Byakugan user.</p>
                <span class="badge">Byakugan</span>
            </div>
        </div>


        <div class="character leaf">
            <div class="avatar">💜</div>
            <div class="info">
                <h3>Hinata Hyuga</h3>
                <div class="village">Hidden Leaf • Hyuga</div>
                <p>A gentle but determined Hyuga clan ninja.</p>
                <span class="badge">Byakugan</span>
            </div>
        </div>


        <!-- LEGENDS -->

        <div class="character legend leaf">
            <div class="avatar">🐸</div>
            <div class="info">
                <h3>Jiraiya</h3>
                <div class="village">Hidden Leaf • Legendary Sannin</div>
                <p>The legendary ninja who trained Naruto.</p>
                <span class="badge">Sage Mode</span>
            </div>
        </div>


        <div class="character legend leaf">
            <div class="avatar">👑</div>
            <div class="info">
                <h3>Tsunade</h3>
                <div class="village">Hidden Leaf • Fifth Hokage</div>
                <p>A legendary medical ninja with incredible strength.</p>
                <span class="badge">Hokage</span>
            </div>
        </div>


        <div class="character legend">
            <div class="avatar">🐍</div>
            <div class="info">
                <h3>Orochimaru</h3>
                <div class="village">Legendary Sannin</div>
                <p>A dangerous shinobi obsessed with learning every technique.</p>
                <span class="badge">Sannin</span>
            </div>
        </div>


        <div class="character legend leaf">
            <div class="avatar">🔥</div>
            <div class="info">
                <h3>Minato Namikaze</h3>
                <div class="village">Hidden Leaf • Fourth Hokage</div>
                <p>The legendary Yellow Flash of the Leaf.</p>
                <span class="badge">Hokage</span>
            </div>
        </div>


        <div class="character legend leaf">
            <div class="avatar">🌪️</div>
            <div class="info">
                <h3>Hashirama Senju</h3>
                <div class="village">Hidden Leaf • First Hokage</div>
                <p>The First Hokage and legendary Wood Release user.</p>
                <span class="badge">Wood Release</span>
            </div>
        </div>


        <div class="character legend">
            <div class="avatar">💧</div>
            <div class="info">
                <h3>Tobirama Senju</h3>
                <div class="village">Hidden Leaf • Second Hokage</div>
                <p>A genius shinobi and creator of many techniques.</p>
                <span class="badge">Hokage</span>
            </div>
        </div>


        <!-- UCHIHA -->

        <div class="character uchiha">
            <div class="avatar">🔴</div>
            <div class="info">
                <h3>Itachi Uchiha</h3>
                <div class="village">Uchiha • Akatsuki</div>
                <p>A mysterious Uchiha prodigy with extraordinary genjutsu.</p>
                <span class="badge">Mangekyo Sharingan</span>
            </div>
        </div>


        <div class="character uchiha akatsuki">
            <div class="avatar">🌑</div>
            <div class="info">
                <h3>Obito Uchiha</h3>
                <div class="village">Uchiha • Akatsuki</div>
                <p>A major figure behind the Fourth Great Ninja War.</p>
                <span class="badge">Mangekyo Sharingan</span>
            </div>
        </div>


        <div class="character uchiha akatsuki">
            <div class="avatar">⚔️</div>
            <div class="info">
                <h3>Madara Uchiha</h3>
                <div class="village">Uchiha • Legendary Shinobi</div>
                <p>One of the most powerful shinobi in history.</p>
                <span class="badge">Rinnegan</span>
            </div>
        </div>


        <!-- AKATSUKI -->

        <div class="character akatsuki">
            <div class="avatar">☁️</div>
            <div class="info">
                <h3>Pain</h3>
                <div class="village">Akatsuki</div>
                <p>The leader of the Akatsuki organization.</p>
                <span class="badge">Rinnegan</span>
            </div>
        </div>


        <div class="character akatsuki">
            <div class="avatar">🦈</div>
            <div class="info">
                <h3>Kisame Hoshigaki</h3>
                <div class="village">Akatsuki • Hidden Mist</div>
                <p>A powerful swordsman known as the Monster of the Hidden Mist.</p>
                <span class="badge">Samehada</span>
            </div>
        </div>


        <div class="character akatsuki">
            <div class="avatar">💥</div>
            <div class="info">
                <h3>Deidara</h3>
                <div class="village">Akatsuki • Hidden Stone</div>
                <p>An explosive artist who uses clay as his weapon.</p>
                <span class="badge">Explosive Clay</span>
            </div>
        </div>


        <div class="character akatsuki">
            <div class="avatar">🧵</div>
            <div class="info">
                <h3>Sasori</h3>
                <div class="village">Akatsuki • Hidden Sand</div>
                <p>A puppet master who transformed his own body.</p>
                <span class="badge">Puppets</span>
            </div>
        </div>


        <div class="character akatsuki">
            <div class="avatar">🎭</div>
            <div class="info">
                <h3>Konan</h3>
                <div class="village">Akatsuki • Hidden Rain</div>
                <p>A powerful paper-style ninja and founding member of the Akatsuki.</p>
                <span class="badge">Paper Jutsu</span>
            </div>
        </div>


        <div class="character akatsuki">
            <div class="avatar">💀</div>
            <div class="info">
                <h3>Hidan</h3>
                <div class="village">Akatsuki</div>
                <p>A dangerous immortal shinobi who uses a ritualistic fighting style.</p>
                <span class="badge">Immortal</span>
            </div>
        </div>


        <div class="character akatsuki">
            <div class="avatar">🖤</div>
            <div class="info">
                <h3>Kakuzu</h3>
                <div class="village">Akatsuki</div>
                <p>A mysterious shinobi obsessed with money and survival.</p>
                <span class="badge">Five Hearts</span>
            </div>
        </div>


        <!-- SAND -->

        <div class="character">
            <div class="avatar">🏜️</div>
            <div class="info">
                <h3>Gaara</h3>
                <div class="village">Hidden Sand • Kazekage</div>
                <p>The former jinchuriki who became Kazekage.</p>
                <span class="badge">Sand Jutsu</span>
            </div>
        </div>


        <div class="character">
            <div class="avatar">🌪️</div>
            <div class="info">
                <h3>Temari</h3>
                <div class="village">Hidden Sand</div>
                <p>A powerful wind-style kunoichi.</p>
                <span class="badge">Wind Style</span>
            </div>
        </div>


        <div class="character">
            <div class="avatar">⚔️</div>
            <div class="info">
                <h3>Kankuro</h3>
                <div class="village">Hidden Sand</div>
                <p>A skilled puppet master from the Sand Village.</p>
                <span class="badge">Puppets</span>
            </div>
        </div>


        <!-- OTHER KAGE -->

        <div class="character kage">
            <div class="avatar">⚡</div>
            <div class="info">
                <h3>Killer Bee</h3>
                <div class="village">Hidden Cloud • Eight-Tails</div>
                <p>A powerful jinchuriki and master swordsman.</p>
                <span class="badge">Eight-Tails</span>
            </div>
        </div>


        <div class="character kage">
            <div class="avatar">⚡</div>
            <div class="info">
                <h3>Fourth Raikage</h3>
                <div class="village">Hidden Cloud</div>
                <p>A lightning-fast and incredibly powerful Kage.</p>
                <span class="badge">Lightning Style</span>
            </div>
        </div>


        <div class="character kage">
            <div class="avatar">🌊</div>
            <div class="info">
                <h3>Mei Terumi</h3>
                <div class="village">Hidden Mist • Mizukage</div>
                <p>The Fifth Mizukage with multiple nature transformations.</p>
                <span class="badge">Mizukage</span>
            </div>
        </div>


        <div class="character kage">
            <div class="avatar">🪨</div>
            <div class="info">
                <h3>Onoki</h3>
                <div class="village">Hidden Stone • Tsuchikage</div>
                <p>The legendary Third Tsuchikage.</p>
                <span class="badge">Particle Style</span>
            </div>
        </div>


        <!-- OTHERS -->

        <div class="character">
            <div class="avatar">🧪</div>
            <div class="info">
                <h3>Kabuto Yakushi</h3>
                <div class="village">Independent Shinobi</div>
                <p>A highly skilled medical ninja and experimenter.</p>
                <span class="badge">Sage Mode</span>
            </div>
        </div>


        <div class="character">
            <div class="avatar">🐌</div>
            <div class="info">
                <h3>Katsuyu</h3>
                <div class="village">Slug • Summoning</div>
                <p>The enormous slug summoned by Tsunade.</p>
                <span class="badge">Summoning</span>
            </div>
        </div>


        <div class="character">
            <div class="avatar">🐸</div>
            <div class="info">
                <h3>Gamabunta</h3>
                <div class="village">Mount Myoboku</div>
                <p>The legendary toad boss summoned by Naruto and Jiraiya.</p>
                <span class="badge">Summoning</span>
            </div>
        </div>


        <div class="character">
            <div class="avatar">🦊</div>
            <div class="info">
                <h3>Kurama</h3>
                <div class="village">Nine-Tailed Fox</div>
                <p>The legendary Nine-Tailed Beast sealed within Naruto.</p>
                <span class="badge">Tailed Beast</span>
            </div>
        </div>


        <div class="character">
            <div class="avatar">🌑</div>
            <div class="info">
                <h3>Kaguya Otsutsuki</h3>
                <div class="village">Otsutsuki</div>
                <p>An ancient and immensely powerful figure connected to chakra's origins.</p>
                <span class="badge">Otsutsuki</span>
            </div>
        </div>


        <div class="character">
            <div class="avatar">☯️</div>
            <div class="info">
                <h3>Hagoromo Otsutsuki</h3>
                <div class="village">Sage of Six Paths</div>
                <p>The legendary Sage associated with the origin of ninshu.</p>
                <span class="badge">Six Paths</span>
            </div>
        </div>


    </div>

</section>


<!-- ABOUT -->

<section id="about">

    <div class="section-title">

        <h2>The Shinobi World</h2>

        <p>
            From the Hidden Leaf to the Akatsuki, explore the legendary
            world of Naruto.
        </p>

    </div>

</section>


<footer>

    <p>
        Built for the <strong>Manjuapp CI/CD Project</strong>
    </p>

    <p style="margin-top:10px;">
        GitHub • Maven • SonarQube • Nexus • Tomcat
    </p>

</footer>


<script>

    function searchCharacters() {

        let input =
            document.getElementById("search")
            .value
            .toLowerCase();

        let cards =
            document.querySelectorAll(".character");

        cards.forEach(card => {

            let name =
                card.innerText.toLowerCase();

            if (name.includes(input)) {
                card.style.display = "";
            } else {
                card.style.display = "none";
            }

        });

    }


    function filterCharacters(category, button) {

        document
            .querySelectorAll(".filter")
            .forEach(btn => btn.classList.remove("active"));

        button.classList.add("active");

        let cards =
            document.querySelectorAll(".character");

        cards.forEach(card => {

            if (category === "all") {
                card.style.display = "";
            }
            else if (card.classList.contains(category)) {
                card.style.display = "";
            }
            else {
                card.style.display = "none";
            }

        });

    }

</script>

</body>
</html>
