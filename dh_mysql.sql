CREATE SCHEMA `dh_mysql` ;

CREATE TABLE `dh_mysql`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `nota_id` INT NOT NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `dh_mysql`.`notas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `fecha_creacion` TIMESTAMP NULL,
  `ultima_modificacion` TIMESTAMP NULL,
  `descripcion` LONGTEXT NOT NULL,
  `categoria_id` INT NOT NULL,
  `notas_categorias_id` INT NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `dh_mysql`.`categorias` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `dh_mysql`. `notas_categorias`(
  `id` INT NOT NULL AUTO_INCREMENT,
  `categoria_id` INT NOT NULL,
  `nota_id` INT NOT NULL,
   PRIMARY KEY (id)
);

ALTER TABLE `dh_mysql`.`usuarios`
ADD FOREIGN KEY (nota_id) REFERENCES notas(id);

ALTER TABLE `dh_mysql`.`notas`
ADD FOREIGN KEY (categoria_id) REFERENCES categorias(id);
ALTER TABLE `dh_mysql`.`notas`
ADD FOREIGN KEY (notas_categorias_id) REFERENCES notas_categorias(id);

ALTER TABLE `dh_mysql`. `notas_categorias`
ADD FOREIGN KEY (categoria_id) REFERENCES categorias(id);
ALTER TABLE `dh_mysql`. `notas_categorias`
ADD FOREIGN KEY (nota_id) REFERENCES notas(id);

INSERT INTO `dh_mysql`.`usuarios`
(`id`, `nombre`, `email`)
VALUES
(DEFAULT, 'Pepe', 'pepe@gmail.com'),
(DEFAULT, 'Jorge', 'jorge@gmail.com'),
(DEFAULT, 'Sergio', 'sergio@gmail.com'),
(DEFAULT, 'Ana', 'ana@gmail.com'),
(DEFAULT, 'Paola', 'paola@gmail.com'),
(DEFAULT, 'Mario', 'mario@gmail.com'),
(DEFAULT, 'Lara', 'lara@gmail.com'),
(DEFAULT, 'Rosario', 'rosario@gmail.com'),
(DEFAULT, 'Jazmin', 'jazmin@gmail.com'),
(DEFAULT, 'Hector', 'hector@gmail.com');

INSERT INTO `dh_mysql`.`notas`
(`id`, `titulo`, `fecha_creacion`, `ultima_modificacion`, `descripcion`, `categoria_id`)
VALUES
(DEFAULT, 'Nota1', NULL, NULL, 'Lorem ipsum dolor', NULL),
(DEFAULT, 'Nota2', NULL, NULL, 'Lorem ipsum dolor', NULL),
(DEFAULT, 'Nota3', NULL, NULL, 'Lorem ipsum dolor', NULL),
(DEFAULT, 'Nota4', NULL, NULL, 'Lorem ipsum dolor', NULL),
(DEFAULT, 'Nota5', NULL, NULL, 'Lorem ipsum dolor', NULL),
(DEFAULT, 'Nota6', NULL, NULL, 'Lorem ipsum dolor', NULL),
(DEFAULT, 'Nota7', NULL, NULL, 'Lorem ipsum dolor', NULL),
(DEFAULT, 'Nota8', NULL, NULL, 'Lorem ipsum dolor', NULL),
(DEFAULT, 'Nota9', NULL, NULL, 'Lorem ipsum dolor', NULL),
(DEFAULT, 'Nota10', NULL, NULL, 'Lorem ipsum dolor', NULL);

INSERT INTO `dh_mysql`.`categorias`
(`id`, `nombre`)
VALUES
(DEFAULT, 'Accion'),
(DEFAULT, 'Comedia'),
(DEFAULT, 'Romance'),
(DEFAULT, 'Terror'),
(DEFAULT, 'Ciencia Ficcion'),
(DEFAULT, 'Fantasia'),
(DEFAULT, 'Aventuras'),
(DEFAULT, 'Drama'),
(DEFAULT, 'Infantil'),
(DEFAULT, 'Policial');

INSERT INTO `dh_mysql`.`notas_categorias`
VALUES
(DEFAULT,1,1),
(DEFAULT,2,2),
(DEFAULT,3,3),
(DEFAULT,4,4),
(DEFAULT,5,7),
(DEFAULT,6,9),
(DEFAULT,10,8),
(DEFAULT,7,1),
(DEFAULT,3,6),
(DEFAULT,8,8);
