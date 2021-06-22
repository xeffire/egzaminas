<?php
$conn = mysql_connect('localhost')

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" integrity="undefined" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/style.css">
    <script src="js/script.js" defer></script>
</head>
<body>
    <header>
        <img src="img/logo.png" alt="logotipas">
    </header>
    <section class="row">
        <h2>Naujausi kursai</h2>
        <article class="card w-25">
            <img class="card-image" src="img/git.jpg" alt="git">
            <header class="card-header"><h3><a href="#" class="link">Kurso pavadinimas</a></h3></header>
            <div class="card-body">
                <h4>Autorius</h4>
                <p>
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed asperiores accusantium iure voluptatem numquam eius eveniet voluptas dicta! Autem, dolorem corporis excepturi tempora voluptatum maiores officiis eveniet illum quia ad?
                </p>
                <div class="rating"><i class="fa fa-star text-warning"></i></div>
                <p class="badge rounded-pill     bg-primary">Komentarai <span id="commentNo"></span></p>
            </div>
        </article>
        <article class="card w-25">
            <img class="card-image" src="img/css.jpg" alt="git">
            <header class="card-header"><h3><a href="#" class="link">Kurso pavadinimas</a></h3></header>
            <div class="card-body">
                <h4>Autorius</h4>
                <p>
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed asperiores accusantium iure voluptatem numquam eius eveniet voluptas dicta! Autem, dolorem corporis excepturi tempora voluptatum maiores officiis eveniet illum quia ad?
                </p>
                <div class="rating"><i class="fa fa-star text-warning"></i></div>
            </div>
        </article>
        <article class="card w-25">
            <img class="card-image" src="img/js.jpg" alt="git">
            <header class="card-header"><h3><a href="#" class="link">Kurso pavadinimas</a></h3></header>
            <div class="card-body">
                <h4>Autorius</h4>
                <p>
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed asperiores accusantium iure voluptatem numquam eius eveniet voluptas dicta! Autem, dolorem corporis excepturi tempora voluptatum maiores officiis eveniet illum quia ad?
                </p>
                <div class="rating"><i class="fa fa-star text-warning"></i></div>
            </div>
        </article>
        <article class="card w-25">
            <img class="card-image" src="img/php.jpg" alt="git">
            <header class="card-header"><h3><a href="#" class="link">Kurso pavadinimas</a></h3></header>
            <div class="card-body">
                <h4>Autorius</h4>
                <p>
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed asperiores accusantium iure voluptatem numquam eius eveniet voluptas dicta! Autem, dolorem corporis excepturi tempora voluptatum maiores officiis eveniet illum quia ad?
                </p>
                <div class="rating"><i class="fa fa-star text-warning"></i></div>
            </div>
        </article>
    </section>
    <section>
        <h2>Sekite naujienas</h2>
        <h3>Norite gauti pranešimus apie naujus kursus? Užsisakykite mūsų naujienlaiškį!</h3>
        <form class="d-flex flex-column w-25">
            <input type="text" placeholder="Vardas">
            <input type="email" placeholder="El. paštas">
            <input type="submit" value="Užsisakyti">
        </form>
    </section>
    <footer class="footer">
        © 2021 Justinas Goberis
    </footer>
</body>
</html>