CREATE TABLE users
(
    id SERIAL NOT NULL UNIQUE,
    name VARCHAR(30) NOT NULL ,
    surname VARCHAR(30) NOT NULL,
    email VARCHAR(40) NOT NULL,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE hotels
(
    id SERIAL NOT NULL UNIQUE,
    name VARCHAR(30) NOT NULL,
    category VARCHAR(60) NOT NULL,
    address VARCHAR(60) NOT NULL,
    stars_count INT NOT NULL,
    rating INT NOT NULL
);

CREATE TABLE photos
(
    id SERIAL NOT NULL UNIQUE,
    main_photo_path VARCHAR(255),
    photo_path VARCHAR(255) NOT NULL
);

CREATE TABLE hotels_photos
(
    id SERIAL PRIMARY KEY NOT NULL UNIQUE,
    from_id INT NOT NULL REFERENCES hotels (id)  on delete cascade  not null,
    to_id INT NOT NULL REFERENCES photos (id)  on delete cascade  not null
);


