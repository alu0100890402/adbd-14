USE plusprime;

INSERT INTO SUSCRIPCION(Suscripcion, Precio, Numero_pantallas, Numero_perfiles, Calidad)
VALUES(1, 9.99, 2, 3, "720p"), 
(2, 14.99, 4, 6, "1080p");

INSERT INTO CLIENTE(Email, Contraseña, Username, Pais, Suscripcion)
VALUES("jorge@ull.es", "123456", "alu0100890402", "ES", 1),
("eduardo@ull.es", "654321", "alu0100888423", "ES", 2),
("carlos@ull.es", "asdfgh", "alu0101132945", "ES", 1);

INSERT INTO PERFIL(Nombre, Infantil, Cliente_email)                                         
VALUES("Jorge", 0, "jorge@ull.es"),
("Eduardo", 1, "eduardo@ull.es"),
("Carlos", 0, "carlos@ull.es");

INSERT INTO PELICULA(Titulo, Genero, Exclusivo, Precio)
VALUES("Los Miserables", "Musical", 0, 0),
("James Bond", "Accion", 0, 0),
("Soul", "Animacion", 1, 4.99), 
("Resacon en las Vegas", "Comedia", 0, 0);

INSERT INTO SERIE(Titulo, Genero, Exclusivo, Precio)
VALUES("Friends", "Sitcom", 0, 0),
("Breaking Bad", "Thriller", 0, 0),
("Juego de Tronos", "Fantasia", 0, 0),
("Gambito de Dama", "Drama", 1, 4.99),
("The boys", "Accion", 0, 0);

INSERT INTO ALQUILER(Pelicula_ID, Cliente_email, Fecha_adquisicion, Fecha_caducidad, Serie_ID)
VALUES(3, "jorge@ull.es", '2021-02-03 13:17:17', '2021-03-03 13:17:17', 4);

INSERT INTO TEMPORADAS(Num_temporada, Serie_ID)
VALUES(1, 1),
(2, 1),
(1, 4);

INSERT INTO CAPITULO(Num_capitulo, Titulo, Duracion, Temporadas_Num_temporada, Temporadas_Serie_ID)
VALUES(1, "Piloto", '20:00', 1, 1),
(1, "Piloto", '45:00', 1, 4);

INSERT INTO RECOMENDADO(Serie_ID, Pelicula_ID, `Match`, Perfil_Nombre, Perfil_Cliente_Email)
VALUES(4, 1, 92, "Jorge", "jorge@ull.es"),
(2, 2, 85, "Carlos", "carlos@ull.es"),
(1, 3, 89, "Eduardo", "eduardo@ull.es");

INSERT INTO FAVORITO(Serie_ID, Perfil_Nombre, Perfil_Cliente_Email, Pelicula_ID)
VALUES(2, "Eduardo", "eduardo@ull.es", 4),
(3, "Carlos", "carlos@ull.es", 2),
(5, "Jorge", "jorge@ull.es", 3);
