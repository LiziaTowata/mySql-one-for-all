DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.tabela_plan(
  plan_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  type_plan VARCHAR(100) NOT NULL,
  price_plan DOUBLE NOT NULL
  ) engine = InnoDB;

CREATE TABLE SpotifyClone.tabela_user(
  user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(100) NOT NULL,
  user_age INT NOT NULL,
  data_singature DATE NOT NULL,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES tabela_plan(plan_id)
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.tabela_famous(
  famous_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  column_famous VARCHAR(100) NOT NULL
  )engine = InnoDB;
  
  CREATE TABLE SpotifyClone.tabela_follwing(
  famous_id INT NOT NULL,
  user_id INT NOT NULL,
  FOREIGN KEY (famous_id) REFERENCES tabela_famous(famous_id),
  FOREIGN KEY (user_id) REFERENCES tabela_user(user_id)
  )engine = InnoDB;
  
  CREATE TABLE SpotifyClone.tabela_album(
  album_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  album_name VARCHAR(100) NOT NULL,
  age_album INT NOT NULL

  )engine = InnoDB;
  
  CREATE TABLE SpotifyClone.tabela_music(
  music_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  music_name VARCHAR(100) NOT NULL,
  music_time INT NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES tabela_album(album_id)
  )engine = InnoDB;
  
  CREATE TABLE SpotifyClone.tabela_historic(
  music_id INT NOT NULL,
  user_id INT NOT NULL,
  FOREIGN KEY (music_id) REFERENCES tabela_music(music_id),
  FOREIGN KEY (user_id) REFERENCES tabela_user(user_id)
  )engine = InnoDB;

  INSERT INTO SpotifyClone.tabela_plan(type_plan, price_plan)
  VALUES
    ('gratuito', 0.00),
	('universitário', 5.99),
	('pessoal', 6.99),
	('familiar', 7.99);

  INSERT INTO SpotifyClone.tabela_user (user_name, user_age, data_singature, plan_id)
  VALUES
    ('Barbara Liskov', '82', '2019-10-20','1'),
    ('Robert Cecil Martin', '58', '2017-01-06','1'),
    ('Ada Lovelace', '37', '2017-12-30','2'),
    ('Martin Fowler', '46', '2017-01-17','2'),
    ('Sandi Metz', '58', '2018-04-29','2'),
    ('Paulo Freire', '19', '2018-02-14','3'),
    ('Bell Hooks', '26', '2018-01-05','3'),
    ('Christopher Alexander', '85', '2019-06-05','4'),
    ('Judith Butler', '45', '2020-05-13','4'),
    ('Jorge Amado', '58', '2017-02-17','4');

    INSERT INTO SpotifyClone.tabela_historic(music_id, user_id)
  VALUES
    ('Samba em Paris', '2022-02-28 10:45:55'),
    ('VIRGO’S GROOVE', '2020-05-02 05:30:35'),
    ('Feeling Good', '2020-03-06 11:22:33'),
    ('Feeling Good', '2022-08-05 08:05:17'),
    ('O Medo de Amar é o Medo de Ser Livre', '2020-01-02 07:40:33'),
    ('Feeling Good', '2020-11-13 16:55:13'),
    ('VIRGO’S GROOVE', '2020-12-05 18:38:30'),
    ('Samba em Paris', '2021-08-15 17:10:10'),
    ('Samba em Paris', '2022-01-09 01:44:33'),
    ('Under Pressure', '2020-08-06 15:23:43'),
    ('O Medo de Amar é o Medo de Ser Livre', '2017-01-24 00:31:17'),
    ('BREAK MY SOUL', '2017-10-12 12:35:20'),
    ('Don’t Stop Me Now', '2011-12-15 22:30:49'),
    ('Don’t Stop Me Now', '2012-03-17 14:56:41'),
    ('The Bard’s Song', '2022-02-24 21:14:22'),
    ('ALIEN SUPERSTAR', '2015-12-13 08:30:22');

    INSERT INTO SpotifyClone.tabela_famous(column_famous)
  VALUES
  ('Beyoncé'),
  ('Queen'),
  ('Elis Regina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');

  INSERT INTO SpotifyClone.tabela_music(music_name, music_time)
  VALUES
  ('BREAK MY SOUL', '279'),
  ('VIRGO’S GROOVE', '369', ),
  ('ALIEN SUPERSTAR', '116'),
  ('Don’t Stop Me Now', '203',),
  ('Under Pressure', '152'),
  ('Como Nossos Pais', '105'),
  ('O Medo de Amar é o Medo de Ser Livre', '207'),
  ('Samba em Paris', '267'),
  ('The Bard’s Song', '244'),
  ('Feeling Good', '100');
