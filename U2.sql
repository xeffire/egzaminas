drop TABLE IF EXISTS Kursai, Reitingas, Komentarai;
CREATE TABLE Kursai(
    KursaiId int not null AUTO_INCREMENT PRIMARY KEY,
     Data TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    Autorius varchar(70) not null,
    Pavadinimas varchar(100) not null,
    TrumpasAprasymas varchar(200) not null,
    IlgasAprasymas varchar(2000) not null,
    KeliasIkiNuotraukos varchar(500),
    Populiarumas int(6),
    Kaina float(6,2)
);

CREATE TABLE Reitingas(
    ReitingasId int not null AUTO_INCREMENT PRIMARY KEY,
    KursaiId int,
    Reitingas int(1) CHECK (Reitingas > 0 && Reitingas < 6),
    FOREIGN KEY (KursaiId)
        REFERENCES Kursai(KursaiId)
        ON DELETE CASCADE
);

CREATE TABLE Komentarai(
    KomentaraiId int not null AUTO_INCREMENT PRIMARY KEY,
    KursaiId int,
    Komentaras varchar(1000),
    Data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (KursaiId)
        REFERENCES Kursai(KursaiId)
        ON DELETE CASCADE
);

Insert INto Kursai (Autorius, Pavadinimas, TrumpasAprasymas, IlgasAprasymas, KeliasIkiNuotraukos, Populiarumas, Kaina) values ('Justinas', 'Github', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed asperiores accusantium iure voluptatem numquam eius eveniet voluptas dicta! Autem, dolorem corporis excepturi tempora voluptatum maiores officiis eveniet illum quia ad?', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed asperiores accusantium iure voluptatem numquam eius eveniet voluptas dicta! Autem, dolorem corporis excepturi tempora voluptatum maiores officiis eveniet illum quia ad?Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed asperiores accusantium iure voluptatem numquam eius eveniet voluptas dicta! Autem, dolorem corporis excepturi tempora voluptatum maiores officiis eveniet illum quia ad?', '/img/git.jpg', 200, 200.00), ('Justinas', 'PHP', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed asperiores accusantium iure voluptatem numquam eius eveniet voluptas dicta! Autem, dolorem corporis excepturi tempora voluptatum maiores officiis eveniet illum quia ad?', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed asperiores accusantium iure voluptatem numquam eius eveniet voluptas dicta! Autem, dolorem corporis excepturi tempora voluptatum maiores officiis eveniet illum quia ad?Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed asperiores accusantium iure voluptatem numquam eius eveniet voluptas dicta! Autem, dolorem corporis excepturi tempora voluptatum maiores officiis eveniet illum quia ad?', '/img/php.jpg', 600, 180.00), ('Justinas', 'JavaScript', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed asperiores accusantium iure voluptatem numquam eius eveniet voluptas dicta! Autem, dolorem corporis excepturi tempora voluptatum maiores officiis eveniet illum quia ad?', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed asperiores accusantium iure voluptatem numquam eius eveniet voluptas dicta! Autem, dolorem corporis excepturi tempora voluptatum maiores officiis eveniet illum quia ad?Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed asperiores accusantium iure voluptatem numquam eius eveniet voluptas dicta! Autem, dolorem corporis excepturi tempora voluptatum maiores officiis eveniet illum quia ad?', '/img/js.jpg', 210, 190.00), ('Justinas', 'CSS', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed asperiores accusantium iure voluptatem numquam eius eveniet voluptas dicta! Autem, dolorem corporis excepturi tempora voluptatum maiores officiis eveniet illum quia ad?', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed asperiores accusantium iure voluptatem numquam eius eveniet voluptas dicta! Autem, dolorem corporis excepturi tempora voluptatum maiores officiis eveniet illum quia ad?Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed asperiores accusantium iure voluptatem numquam eius eveniet voluptas dicta! Autem, dolorem corporis excepturi tempora voluptatum maiores officiis eveniet illum quia ad?', '/img/css.jpg', 100, 500.00);

Insert INTO Reitingas (KursaiId, Reitingas) Values (1, 4), (2, 5), (3, 3), (4,4);
Insert INTO Komentarai (KursaiId, Komentaras) Values (1, 'Puikiai'),(1, 'Puikiai'),(1, 'Puikiai'), (2, 'Puikiai'), (3, 'Puikiai'), (4, 'Puikiai'), (1, 'Puikiai'), (2, 'Puikiai'), (3, 'Puikiai'), (4, 'Puikiai');