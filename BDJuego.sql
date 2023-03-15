DROP DATABASE IF EXISTS Juego;
CREATE DATABASE Juego;

USE Juego;

create table Jugador(
	id int,
	nombre varchar(20),
	contraseña varchar(20),
	PRIMARY KEY(ID)
)ENGINE=InnoDB;
	
create table Partida(
	id int,
	ganador varchar(20),
	fecha varchar(11),
	jugadores int,/*numero de jugadores*/
	PRIMARY KEY(ID)
)ENGINE=InnoDB;

create tabla Participación(
	id_p int,
	id_j int,
	color varchar(20),
	FOREIGN KEY (ID_P) REFERENCES Partida(ID),
	FOREIGN KEY (ID_J) REFERENCES Jugador(ID)
/*añadir color de las fichas?*/
)ENGINE=InnoDB;