--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 6.3.358.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 26.12.2015 21:30:33
-- Версия сервера: 5.6.26
-- Версия клиента: 4.1
--


-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установить режим SQL (SQL mode)
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'cp1251';

-- 
-- Установка базы данных по умолчанию
--
USE library;

--
-- Описание для таблицы added_author
--
DROP TABLE IF EXISTS added_author;
CREATE TABLE added_author (
  ID_print INT(11) DEFAULT NULL,
  Added_author VARCHAR(255) DEFAULT NULL,
  User VARCHAR(255) DEFAULT NULL
)
ENGINE = INNODB
AVG_ROW_LENGTH = 5461
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы authors
--
DROP TABLE IF EXISTS authors;
CREATE TABLE authors (
  IDauthor INT(11) NOT NULL AUTO_INCREMENT,
  Author VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (IDauthor),
  UNIQUE INDEX UK_authors_IDauthor (IDauthor)
)
ENGINE = INNODB
AUTO_INCREMENT = 28
AVG_ROW_LENGTH = 5461
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы city
--
DROP TABLE IF EXISTS city;
CREATE TABLE city (
  IDcity INT(11) NOT NULL AUTO_INCREMENT,
  City VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (IDcity),
  UNIQUE INDEX UK_city_IDcity (IDcity)
)
ENGINE = INNODB
AUTO_INCREMENT = 9
AVG_ROW_LENGTH = 16384
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы genre
--
DROP TABLE IF EXISTS genre;
CREATE TABLE genre (
  IDgenre INT(11) NOT NULL AUTO_INCREMENT,
  Genre VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (IDgenre),
  UNIQUE INDEX UK_genre_IDgenre (IDgenre)
)
ENGINE = INNODB
AUTO_INCREMENT = 18
AVG_ROW_LENGTH = 16384
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы guest_book
--
DROP TABLE IF EXISTS guest_book;
CREATE TABLE guest_book (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  Date DATETIME DEFAULT NULL,
  Name VARCHAR(50) DEFAULT NULL,
  Email VARCHAR(50) DEFAULT NULL,
  Message VARCHAR(255) DEFAULT NULL,
  Public VARCHAR(255) DEFAULT '0',
  PRIMARY KEY (ID)
)
ENGINE = INNODB
AUTO_INCREMENT = 8
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы institute
--
DROP TABLE IF EXISTS institute;
CREATE TABLE institute (
  IDinstitute INT(11) NOT NULL AUTO_INCREMENT,
  Institute VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (IDinstitute),
  UNIQUE INDEX UK_Institute_IDinstitute (IDinstitute)
)
ENGINE = INNODB
AUTO_INCREMENT = 3
AVG_ROW_LENGTH = 16384
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы keyword
--
DROP TABLE IF EXISTS keyword;
CREATE TABLE keyword (
  IDkeyword INT(11) NOT NULL AUTO_INCREMENT,
  Keyword VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (IDkeyword),
  UNIQUE INDEX UK_keyword_IDkeyword (IDkeyword)
)
ENGINE = INNODB
AUTO_INCREMENT = 25
AVG_ROW_LENGTH = 4096
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы librarians
--
DROP TABLE IF EXISTS librarians;
CREATE TABLE librarians (
  id INT(11) NOT NULL AUTO_INCREMENT,
  login VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  role VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 10
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы publishing_house
--
DROP TABLE IF EXISTS publishing_house;
CREATE TABLE publishing_house (
  IDpublishing_house INT(11) NOT NULL AUTO_INCREMENT,
  Publishing_house VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (IDpublishing_house),
  UNIQUE INDEX UK_publishing_house_IDpublishing_house (IDpublishing_house)
)
ENGINE = INNODB
AUTO_INCREMENT = 4
AVG_ROW_LENGTH = 16384
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы repository
--
DROP TABLE IF EXISTS repository;
CREATE TABLE repository (
  IDrepository INT(11) NOT NULL AUTO_INCREMENT,
  Repository VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (IDrepository),
  UNIQUE INDEX UK_repository_IDrepository (IDrepository)
)
ENGINE = INNODB
AUTO_INCREMENT = 3
AVG_ROW_LENGTH = 8192
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы section
--
DROP TABLE IF EXISTS section;
CREATE TABLE section (
  IDsection INT(11) NOT NULL AUTO_INCREMENT,
  Section VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (IDsection),
  UNIQUE INDEX UK_section_IDsection (IDsection)
)
ENGINE = INNODB
AUTO_INCREMENT = 4
AVG_ROW_LENGTH = 8192
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы state
--
DROP TABLE IF EXISTS state;
CREATE TABLE state (
  IDstate INT(11) NOT NULL AUTO_INCREMENT,
  State VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (IDstate),
  UNIQUE INDEX UK_state_IDstate (IDstate)
)
ENGINE = INNODB
AUTO_INCREMENT = 6
AVG_ROW_LENGTH = 3276
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы subs_audit
--
DROP TABLE IF EXISTS subs_audit;
CREATE TABLE subs_audit (
  IDup_sub INT(11) NOT NULL AUTO_INCREMENT,
  Old VARCHAR(255) DEFAULT NULL,
  New VARCHAR(255) DEFAULT NULL,
  User VARCHAR(255) DEFAULT NULL,
  Time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (IDup_sub)
)
ENGINE = INNODB
AUTO_INCREMENT = 27
AVG_ROW_LENGTH = 3276
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы type_of_publication
--
DROP TABLE IF EXISTS type_of_publication;
CREATE TABLE type_of_publication (
  IDtype_of_publication INT(11) NOT NULL AUTO_INCREMENT,
  Type_of_publication VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (IDtype_of_publication),
  UNIQUE INDEX UK_type_of_publication_IDtype_of_publication (IDtype_of_publication)
)
ENGINE = INNODB
AUTO_INCREMENT = 5
AVG_ROW_LENGTH = 3276
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы type_of_publication2
--
DROP TABLE IF EXISTS type_of_publication2;
CREATE TABLE type_of_publication2 (
  IDtype_of_publication2 INT(11) NOT NULL AUTO_INCREMENT,
  Type_of_publication2 VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (IDtype_of_publication2),
  UNIQUE INDEX UK_type_of_publication2_IDtype_of_publication2 (IDtype_of_publication2)
)
ENGINE = INNODB
AUTO_INCREMENT = 6
AVG_ROW_LENGTH = 4096
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы groups
--
DROP TABLE IF EXISTS groups;
CREATE TABLE groups (
  IDgroups INT(11) NOT NULL AUTO_INCREMENT,
  IDinstitute INT(11) DEFAULT NULL,
  Groups VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (IDgroups),
  UNIQUE INDEX UK_groups_IDgroups (IDgroups),
  CONSTRAINT FK_groups_institute_IDinstitute FOREIGN KEY (IDinstitute)
    REFERENCES institute(IDinstitute) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 3
AVG_ROW_LENGTH = 16384
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы print
--
DROP TABLE IF EXISTS print;
CREATE TABLE print (
  IDprint INT(11) NOT NULL AUTO_INCREMENT,
  Title VARCHAR(255) NOT NULL,
  IDtype_of_publication INT(11) NOT NULL,
  IDtype_of_publication2 INT(11) NOT NULL,
  IDpublishing_house INT(11) NOT NULL,
  IDcity INT(11) NOT NULL,
  Year INT(11) DEFAULT NULL,
  Cover VARCHAR(255) DEFAULT 'no-cover.jpg',
  PRIMARY KEY (IDprint),
  UNIQUE INDEX UK_print_IDprint (IDprint),
  CONSTRAINT FK_print_city_IDcity FOREIGN KEY (IDcity)
    REFERENCES city(IDcity) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_print_publishing_house_IDpublishing_house FOREIGN KEY (IDpublishing_house)
    REFERENCES publishing_house(IDpublishing_house) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_print_type_of_publication_IDtype_of_publication FOREIGN KEY (IDtype_of_publication)
    REFERENCES type_of_publication(IDtype_of_publication) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_print_type_of_publication2_IDtype_of_publication2 FOREIGN KEY (IDtype_of_publication2)
    REFERENCES type_of_publication2(IDtype_of_publication2) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 24
AVG_ROW_LENGTH = 16384
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы copy
--
DROP TABLE IF EXISTS copy;
CREATE TABLE copy (
  IDcopy INT(11) NOT NULL AUTO_INCREMENT,
  IDprint INT(11) DEFAULT NULL,
  IDstate INT(11) DEFAULT NULL,
  IDrepositoty INT(11) DEFAULT NULL,
  IDsection INT(11) DEFAULT NULL,
  Quantity INT(11) NOT NULL DEFAULT 1,
  Cost DECIMAL(19, 2) NOT NULL DEFAULT 500.00,
  PRIMARY KEY (IDcopy),
  UNIQUE INDEX UK_copy_IDcopy (IDcopy),
  CONSTRAINT FK_copy_print_IDprint FOREIGN KEY (IDprint)
    REFERENCES print(IDprint) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_copy_repository_IDrepository FOREIGN KEY (IDrepositoty)
    REFERENCES repository(IDrepository) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_copy_section_IDsection FOREIGN KEY (IDsection)
    REFERENCES section(IDsection) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_copy_state_IDstate FOREIGN KEY (IDstate)
    REFERENCES state(IDstate) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 7
AVG_ROW_LENGTH = 16384
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы printauthor
--
DROP TABLE IF EXISTS printauthor;
CREATE TABLE printauthor (
  IDprintauthor INT(11) NOT NULL AUTO_INCREMENT,
  IDprint INT(11) DEFAULT NULL,
  IDauthor INT(11) DEFAULT NULL,
  PRIMARY KEY (IDprintauthor),
  UNIQUE INDEX UK_printauthor_IDprintauthor (IDprintauthor),
  CONSTRAINT FK_printauthor_authors_IDauthor FOREIGN KEY (IDauthor)
    REFERENCES authors(IDauthor) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_printauthor_print_IDprint FOREIGN KEY (IDprint)
    REFERENCES print(IDprint) ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE = INNODB
AUTO_INCREMENT = 27
AVG_ROW_LENGTH = 5461
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы printgenre
--
DROP TABLE IF EXISTS printgenre;
CREATE TABLE printgenre (
  IDprintgenre INT(11) NOT NULL AUTO_INCREMENT,
  IDprint INT(11) DEFAULT NULL,
  IDgenre INT(11) DEFAULT NULL,
  PRIMARY KEY (IDprintgenre),
  UNIQUE INDEX UK_bookgenre_IDprintgenre (IDprintgenre),
  CONSTRAINT FK_printgenre_genre_IDgenre FOREIGN KEY (IDgenre)
    REFERENCES genre(IDgenre) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_printgenre_print_IDprint FOREIGN KEY (IDprint)
    REFERENCES print(IDprint) ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE = INNODB
AUTO_INCREMENT = 16
AVG_ROW_LENGTH = 16384
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы printkeyword
--
DROP TABLE IF EXISTS printkeyword;
CREATE TABLE printkeyword (
  IDprintkeyword INT(11) NOT NULL AUTO_INCREMENT,
  IDprint INT(11) DEFAULT NULL,
  IDkeyword INT(11) DEFAULT NULL,
  PRIMARY KEY (IDprintkeyword),
  UNIQUE INDEX UK_printkeyword_IDprintkeyword (IDprintkeyword),
  CONSTRAINT FK_printkeyword_keyword_IDkeyword FOREIGN KEY (IDkeyword)
    REFERENCES keyword(IDkeyword) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_printkeyword_print_IDprint FOREIGN KEY (IDprint)
    REFERENCES print(IDprint) ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE = INNODB
AUTO_INCREMENT = 25
AVG_ROW_LENGTH = 963
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы reader
--
DROP TABLE IF EXISTS reader;
CREATE TABLE reader (
  IDreader INT(11) NOT NULL AUTO_INCREMENT,
  Date DATETIME DEFAULT CURRENT_TIMESTAMP,
  FIO VARCHAR(255) DEFAULT NULL,
  Date_of_birth DATE DEFAULT NULL,
  Number_of_student_card INT(11) DEFAULT NULL,
  IDgroups INT(11) DEFAULT NULL,
  Password VARCHAR(255) DEFAULT NULL,
  Photo VARCHAR(255) DEFAULT 'no-photo.jpg',
  PRIMARY KEY (IDreader),
  UNIQUE INDEX UK_reader_IDreader (IDreader),
  CONSTRAINT FK_reader_groups_IDgroups FOREIGN KEY (IDgroups)
    REFERENCES groups(IDgroups) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 24
AVG_ROW_LENGTH = 16384
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы faq
--
DROP TABLE IF EXISTS faq;
CREATE TABLE faq (
  IDfaq INT(11) NOT NULL AUTO_INCREMENT,
  Date DATETIME DEFAULT CURRENT_TIMESTAMP,
  Name VARCHAR(50) DEFAULT NULL,
  IDreader INT(11) DEFAULT NULL,
  Question VARCHAR(255) DEFAULT NULL,
  Answer VARCHAR(255) DEFAULT NULL,
  IDlibrarian INT(11) DEFAULT NULL,
  Grade INT(11) DEFAULT NULL,
  PRIMARY KEY (IDfaq),
  CONSTRAINT FK_faq_librarians_id FOREIGN KEY (IDlibrarian)
    REFERENCES librarians(id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_faq_reader_IDreader FOREIGN KEY (IDreader)
    REFERENCES reader(IDreader) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 14
AVG_ROW_LENGTH = 2730
CHARACTER SET utf8
COLLATE utf8_general_ci;

--
-- Описание для таблицы subscription
--
DROP TABLE IF EXISTS subscription;
CREATE TABLE subscription (
  IDsubscription INT(11) NOT NULL AUTO_INCREMENT,
  IDreader INT(11) DEFAULT NULL,
  IDcopy INT(11) DEFAULT NULL,
  Date_of_issue DATE DEFAULT NULL,
  Expected_date_of_returnt DATE DEFAULT NULL,
  Actual_date_of_return DATE DEFAULT NULL,
  Lost INT(11) NOT NULL DEFAULT 0,
  Paid DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (IDsubscription),
  CONSTRAINT FK_subscription_copy_IDcopy FOREIGN KEY (IDcopy)
    REFERENCES copy(IDcopy) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_subscription_reader_IDreader FOREIGN KEY (IDreader)
    REFERENCES reader(IDreader) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 32
AVG_ROW_LENGTH = 16384
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

--
-- Описание для таблицы lost
--
DROP TABLE IF EXISTS lost;
CREATE TABLE lost (
  IDlost INT(11) NOT NULL AUTO_INCREMENT,
  IDsubsctiption INT(11) DEFAULT NULL,
  IDcopy INT(11) DEFAULT NULL,
  Paid DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
  Lost VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (IDlost),
  INDEX FK_lost_subscription_IDcopy (IDcopy),
  UNIQUE INDEX UK_lost_IDlost (IDlost),
  CONSTRAINT FK_lost_subscription_IDsubscription FOREIGN KEY (IDsubsctiption)
    REFERENCES subscription(IDsubscription) ON DELETE RESTRICT ON UPDATE RESTRICT
)
ENGINE = INNODB
AUTO_INCREMENT = 2
CHARACTER SET cp1251
COLLATE cp1251_general_ci;

DELIMITER $$

--
-- Описание для процедуры add_question
--
DROP PROCEDURE IF EXISTS add_question$$
CREATE DEFINER = 'root'@'%'
PROCEDURE add_question(IN php_name varchar(50), IN php_idreader int(11), IN php_question varchar(255))
BEGIN
  INSERT INTO faq (Name, IDreader, Question)
    VALUES (php_name, php_idreader, php_question);
END
$$

--
-- Описание для процедуры authorization_librarian
--
DROP PROCEDURE IF EXISTS authorization_librarian$$
CREATE DEFINER = 'root'@'%'
PROCEDURE authorization_librarian(login_php varchar(255), password_php varchar(255))
BEGIN
  SELECT id 
    FROM librarians 
    WHERE login LIKE login_php AND password LIKE TO_BASE64(MD5(password_php));
END
$$

--
-- Описание для процедуры authorization_librarian_catalog
--
DROP PROCEDURE IF EXISTS authorization_librarian_catalog$$
CREATE DEFINER = 'root'@'127.0.0.1'
PROCEDURE authorization_librarian_catalog(login_php varchar(255), password_php varchar(255))
BEGIN
SELECT id, login 
    FROM librarians 
    WHERE login LIKE login_php AND password LIKE TO_BASE64(MD5(password_php)) AND role LIKE 'catalog';
END
$$

--
-- Описание для процедуры authorization_librarian_readers
--
DROP PROCEDURE IF EXISTS authorization_librarian_readers$$
CREATE DEFINER = 'root'@'127.0.0.1'
PROCEDURE authorization_librarian_readers(login_php varchar(255), password_php varchar(255))
BEGIN
SELECT id, login
    FROM librarians 
    WHERE login LIKE login_php AND password LIKE TO_BASE64(MD5(password_php)) AND role LIKE 'readers';
END
$$

--
-- Описание для процедуры authorization_reader
--
DROP PROCEDURE IF EXISTS authorization_reader$$
CREATE DEFINER = 'root'@'%'
PROCEDURE authorization_reader(login_php varchar(255), password_php varchar(255))
BEGIN
 SELECT IDreader, FIO, Photo
    FROM reader 
    WHERE Number_of_student_card LIKE login_php AND Password LIKE TO_BASE64(MD5(password_php));
END
$$

--
-- Описание для процедуры change_password_reader
--
DROP PROCEDURE IF EXISTS change_password_reader$$
CREATE DEFINER = 'root'@'127.0.0.1'
PROCEDURE change_password_reader(idreader_php varchar(11), password_php varchar(255))
BEGIN
  UPDATE reader
  SET Password = TO_BASE64(MD5(password_php))
  WHERE IDreader LIKE idreader_php;
END
$$

--
-- Описание для процедуры delivery_reader
--
DROP PROCEDURE IF EXISTS delivery_reader$$
CREATE DEFINER = 'root'@'127.0.0.1'
PROCEDURE delivery_reader(php_idreader int(11), idcopy int(11), date_of_issue date, expected_date date)
BEGIN
  INSERT INTO subscription (IDreader, IDcopy, Date_of_issue, Expected_date_of_returnt) VALUES (php_idreader, idcopy, date_of_issue, expected_date);
END
$$

--
-- Описание для процедуры give_answer
--
DROP PROCEDURE IF EXISTS give_answer$$
CREATE DEFINER = 'root'@'%'
PROCEDURE give_answer(php_answer varchar(255), php_idlibr int(11), php_idfaq int(11))
BEGIN
  UPDATE faq SET Answer=php_answer, IDlibrarian=php_idlibr WHERE IDfaq=php_idfaq;
END
$$

--
-- Описание для процедуры proc_plus_func
--
DROP PROCEDURE IF EXISTS proc_plus_func$$
CREATE DEFINER = 'root'@'%'
PROCEDURE proc_plus_func()
BEGIN
  IF (func_plus_proc() = TRUE) THEN (SELECT
        reader.FIO AS 'Читатель',
        COUNT(subscription.IDcopy) AS 'Книг'
      FROM subscription
        JOIN reader
          ON subscription.IDreader = reader.IDreader
      GROUP BY FIO);
  END IF;
END
$$

--
-- Описание для процедуры registration
--
DROP PROCEDURE IF EXISTS registration$$
CREATE DEFINER = 'root'@'%'
PROCEDURE registration(php_fio varchar(255), php_date date, php_number int(11), php_group int(3), php_photo varchar(255))
BEGIN
  INSERT INTO reader (FIO, Date_of_birth, Number_of_student_card, IDgroups, Password, Photo) VALUES(php_fio, php_date, php_number, php_group, TO_BASE64(MD5(123)), php_photo);
END
$$

--
-- Описание для процедуры registration_librarian
--
DROP PROCEDURE IF EXISTS registration_librarian$$
CREATE DEFINER = 'root'@'%'
PROCEDURE registration_librarian(php_login varchar(255), php_password varchar(255), php_role varchar(15))
BEGIN
  INSERT INTO librarians (login, password, role) VALUES (php_login, TO_BASE64(MD5(php_password)), php_role);
END
$$

--
-- Описание для процедуры some_tables
--
DROP PROCEDURE IF EXISTS some_tables$$
CREATE DEFINER = 'root'@'%'
PROCEDURE some_tables(id_print int, author varchar(255))
BEGIN
  INSERT authors (Author) VALUE (author);
  SET @auth = (SELECT MAX(IDauthor) FROM authors);
  #SET @auth = max(IDauthor);
  INSERT printauthor (IDprint, IDauthor) VALUES (id_print, @auth);
  INSERT added_author (ID_print, Added_author, User) VALUES (id_print, author, CURRENT_USER());
END
$$

--
-- Описание для процедуры three_fields
--
DROP PROCEDURE IF EXISTS three_fields$$
CREATE DEFINER = 'root'@'%'
PROCEDURE three_fields(title varchar(255), house varchar(255), type varchar(255))
BEGIN
  SELECT
    ppt.Название AS 'Название',
    ppt.`Издательский дом` AS 'Издательский дом',
    ppt.`Тип публикации` AS 'Тип публикации'
  FROM print_publ_type ppt
  WHERE ppt.Название LIKE title
  AND ppt.`Издательский дом` LIKE house
  AND ppt.`Тип публикации` LIKE type;
END
$$

--
-- Описание для процедуры two_fields
--
DROP PROCEDURE IF EXISTS two_fields$$
CREATE DEFINER = 'root'@'%'
PROCEDURE two_fields( title varchar(255), year int)
BEGIN
  SELECT
    print.Title AS 'Название',
    print.Year AS 'Год'
  FROM print
  WHERE print.Title LIKE title
  AND print.Year = year;
END
$$

--
-- Описание для процедуры verification_password_reader
--
DROP PROCEDURE IF EXISTS verification_password_reader$$
CREATE DEFINER = 'root'@'127.0.0.1'
PROCEDURE verification_password_reader(idreader_php varchar(11), password_php varchar(255))
BEGIN
   SELECT IDreader
    FROM reader 
    WHERE IDreader LIKE idreader_php AND Password LIKE TO_BASE64(MD5(password_php));
END
$$

--
-- Описание для функции count_copyes
--
DROP FUNCTION IF EXISTS count_copyes$$
CREATE DEFINER = 'root'@'%'
FUNCTION count_copyes()
  RETURNS int(11)
BEGIN
RETURN (SELECT COUNT(*) FROM copy_view WHERE Количество IS NOT NULL);
END
$$

--
-- Описание для функции count_readers
--
DROP FUNCTION IF EXISTS count_readers$$
CREATE DEFINER = 'root'@'%'
FUNCTION count_readers(id_group int)
  RETURNS int(11)
BEGIN
  RETURN (SELECT
      COUNT(*)
    FROM reader
    WHERE IDgroups = id_group);
END
$$

--
-- Описание для функции func_plus_proc
--
DROP FUNCTION IF EXISTS func_plus_proc$$
CREATE DEFINER = 'root'@'%'
FUNCTION func_plus_proc()
  RETURNS int(11)
BEGIN
  DECLARE cnt int;
  SET cnt = (SELECT
      COUNT(subscription.IDcopy)
    FROM subscription);
  IF cnt > 0 THEN
    RETURN TRUE;
  ELSE
    RETURN FALSE;
  END IF;
END
$$

DELIMITER ;

--
-- Описание для представления chart1_count_type_section
--
DROP VIEW IF EXISTS chart1_count_type_section CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'127.0.0.1'
VIEW chart1_count_type_section
AS
	select `print`.`Title` AS `Название`,`type_of_publication2`.`Type_of_publication2` AS `Тип_публикации`,sum(`copy`.`Quantity`) AS `Количество`,`section`.`Section` AS `Секция`,`copy`.`IDsection` AS `IDsection`,`copy`.`IDcopy` AS `IDcopy`,`print`.`IDtype_of_publication2` AS `IDtype_of_publication2` from (((`print` left join `type_of_publication2` on((`print`.`IDtype_of_publication2` = `type_of_publication2`.`IDtype_of_publication2`))) left join `copy` on((`print`.`IDprint` = `copy`.`IDprint`))) left join `section` on((`copy`.`IDsection` = `section`.`IDsection`))) where (`copy`.`Quantity` > 0) group by `section`.`Section`,`type_of_publication2`.`Type_of_publication2`,`copy`.`IDsection`;

--
-- Описание для представления chart2_count_type_section
--
DROP VIEW IF EXISTS chart2_count_type_section CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'127.0.0.1'
VIEW chart2_count_type_section
AS
	select `print`.`Title` AS `Название`,`type_of_publication2`.`Type_of_publication2` AS `Тип_публикации`,`print`.`Year` AS `Год`,sum(`copy`.`Quantity`) AS `Количество`,`section`.`Section` AS `Секция`,`copy`.`IDsection` AS `IDsection`,`copy`.`IDcopy` AS `IDcopy`,`print`.`IDprint` AS `IDprint` from (((`print` left join `type_of_publication2` on((`print`.`IDtype_of_publication2` = `type_of_publication2`.`IDtype_of_publication2`))) left join `copy` on((`print`.`IDprint` = `copy`.`IDprint`))) left join `section` on((`copy`.`IDsection` = `section`.`IDsection`))) where (`copy`.`Quantity` > 0) group by `print`.`Year`,`print`.`IDtype_of_publication2`;

--
-- Описание для представления chart3_popular_genres
--
DROP VIEW IF EXISTS chart3_popular_genres CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'127.0.0.1'
VIEW chart3_popular_genres
AS
	select `print`.`Title` AS `Название`,`genre`.`Genre` AS `Жанры`,`print`.`Year` AS `Год`,`subscription`.`Date_of_issue` AS `Дата_выдачи`,count(`genre`.`IDgenre`) AS `Количество` from ((((`print` left join `printgenre` on((`print`.`IDprint` = `printgenre`.`IDprint`))) left join `genre` on((`printgenre`.`IDgenre` = `genre`.`IDgenre`))) left join `copy` on((`copy`.`IDprint` = `print`.`IDprint`))) left join `subscription` on((`subscription`.`IDcopy` = `copy`.`IDcopy`))) where (`subscription`.`Date_of_issue` > (curdate() + interval -(7) day)) group by `genre`.`Genre`;

--
-- Описание для представления chart5_groups_stat
--
DROP VIEW IF EXISTS chart5_groups_stat CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'127.0.0.1'
VIEW chart5_groups_stat
AS
	select `groups`.`Groups` AS `Группа`,`groups`.`IDgroups` AS `IDgroups`,`subscription`.`Date_of_issue` AS `Дата_выдачи`,`subscription`.`Actual_date_of_return` AS `Дата_возврата` from ((`reader` join `groups` on((`reader`.`IDgroups` = `groups`.`IDgroups`))) join `subscription` on((`reader`.`IDreader` = `subscription`.`IDreader`)));

--
-- Описание для представления chart6_top10
--
DROP VIEW IF EXISTS chart6_top10 CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'127.0.0.1'
VIEW chart6_top10
AS
	select `print`.`Title` AS `Название`,`genre`.`Genre` AS `Жанры`,`print`.`Year` AS `Год`,`subscription`.`Date_of_issue` AS `Дата_выдачи`,count(`genre`.`IDgenre`) AS `Количество` from ((((`print` left join `printgenre` on((`print`.`IDprint` = `printgenre`.`IDprint`))) left join `genre` on((`printgenre`.`IDgenre` = `genre`.`IDgenre`))) left join `copy` on((`copy`.`IDprint` = `print`.`IDprint`))) left join `subscription` on((`subscription`.`IDcopy` = `copy`.`IDcopy`))) where (`subscription`.`Date_of_issue` > (curdate() + interval -(30) day)) group by `genre`.`Genre`;

--
-- Описание для представления chart7_debts
--
DROP VIEW IF EXISTS chart7_debts CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'127.0.0.1'
VIEW chart7_debts
AS
	select `groups`.`Groups` AS `Группа`,`groups`.`IDgroups` AS `IDgroups`,count(`groups`.`IDgroups`) AS `Количество`,sum(`copy`.`Cost`) AS `Потери` from (((`reader` join `groups` on((`reader`.`IDgroups` = `groups`.`IDgroups`))) join `subscription` on((`reader`.`IDreader` = `subscription`.`IDreader`))) join `copy` on((`copy`.`IDcopy` = `subscription`.`IDcopy`))) where isnull(`subscription`.`Actual_date_of_return`) group by `groups`.`IDgroups`;

--
-- Описание для представления concat_city_house
--
DROP VIEW IF EXISTS concat_city_house CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'%'
VIEW concat_city_house
AS
	select `print`.`Title` AS `Title`,concat('Издательский дом: ',`publishing_house`.`Publishing_house`,', Город: ',`city`.`City`) AS `Name_exp_2` from ((`print` join `publishing_house` on((`print`.`IDpublishing_house` = `publishing_house`.`IDpublishing_house`))) join `city` on((`print`.`IDcity` = `city`.`IDcity`)));

--
-- Описание для представления concat_types
--
DROP VIEW IF EXISTS concat_types CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW concat_types
AS
	select `print`.`Title` AS `Title`,concat('Тип публикации1: ',`type_of_publication`.`Type_of_publication`,', Тип публикации2: ',`type_of_publication2`.`Type_of_publication2`) AS `Name_exp_2` from ((`print` join `type_of_publication` on((`print`.`IDtype_of_publication` = `type_of_publication`.`IDtype_of_publication`))) join `type_of_publication2` on((`print`.`IDtype_of_publication2` = `type_of_publication2`.`IDtype_of_publication2`)));

--
-- Описание для представления copy_view
--
DROP VIEW IF EXISTS copy_view CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'%'
VIEW copy_view
AS
	select `print`.`Title` AS `Название`,group_concat(distinct `authors`.`Author` order by `authors`.`Author` ASC separator ', ') AS `Авторы`,group_concat(distinct `genre`.`Genre` order by `genre`.`Genre` ASC separator ', ') AS `Жанры`,group_concat(distinct `keyword`.`Keyword` order by `keyword`.`Keyword` ASC separator ', ') AS `Ключевые_слова`,concat(`type_of_publication`.`Type_of_publication`,', ',`type_of_publication2`.`Type_of_publication2`) AS `Тип_публикации`,`publishing_house`.`Publishing_house` AS `Издательский_дом`,`city`.`City` AS `Город`,`print`.`Year` AS `Год`,`copy`.`Quantity` AS `Количество`,`print`.`Cover` AS `Обложка`,`state`.`State` AS `Состояние`,`repository`.`Repository` AS `Хранилище`,`section`.`Section` AS `Секция`,`copy`.`Cost` AS `Стоимость`,`copy`.`IDsection` AS `IDsection`,`copy`.`IDstate` AS `IDstate`,`copy`.`IDrepositoty` AS `IDrepository`,`copy`.`IDcopy` AS `IDcopy`,`print`.`IDprint` AS `IDprint` from ((((((((((((((`print` left join `printauthor` on((`print`.`IDprint` = `printauthor`.`IDprint`))) left join `authors` on((`printauthor`.`IDauthor` = `authors`.`IDauthor`))) left join `printgenre` on((`print`.`IDprint` = `printgenre`.`IDprint`))) left join `genre` on((`printgenre`.`IDgenre` = `genre`.`IDgenre`))) left join `printkeyword` on((`print`.`IDprint` = `printkeyword`.`IDprint`))) left join `keyword` on((`printkeyword`.`IDkeyword` = `keyword`.`IDkeyword`))) left join `type_of_publication` on((`print`.`IDtype_of_publication` = `type_of_publication`.`IDtype_of_publication`))) left join `type_of_publication2` on((`print`.`IDtype_of_publication2` = `type_of_publication2`.`IDtype_of_publication2`))) left join `city` on((`print`.`IDcity` = `city`.`IDcity`))) left join `publishing_house` on((`print`.`IDpublishing_house` = `publishing_house`.`IDpublishing_house`))) left join `copy` on((`print`.`IDprint` = `copy`.`IDprint`))) left join `state` on((`copy`.`IDstate` = `state`.`IDstate`))) left join `repository` on((`copy`.`IDrepositoty` = `repository`.`IDrepository`))) left join `section` on((`copy`.`IDsection` = `section`.`IDsection`))) group by `print`.`Title`;

--
-- Описание для представления groups_and_institutes
--
DROP VIEW IF EXISTS groups_and_institutes CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW groups_and_institutes
AS
	select `institute`.`Institute` AS `Institute`,`groups`.`Groups` AS `Groups`,`institute`.`IDinstitute` AS `IDinstitute`,`groups`.`IDgroups` AS `IDGroups` from (`institute` join `groups` on((`institute`.`IDinstitute` = `groups`.`IDinstitute`)));

--
-- Описание для представления print_publ_type
--
DROP VIEW IF EXISTS print_publ_type CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'%'
VIEW print_publ_type
AS
	select `p`.`Title` AS `Название`,`ph`.`Publishing_house` AS `Издательский дом`,`top`.`Type_of_publication` AS `Тип публикации` from ((`print` `p` join `publishing_house` `ph` on((`p`.`IDpublishing_house` = `ph`.`IDpublishing_house`))) join `type_of_publication` `top` on((`p`.`IDtype_of_publication` = `top`.`IDtype_of_publication`)));

--
-- Описание для представления print_view
--
DROP VIEW IF EXISTS print_view CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'%'
VIEW print_view
AS
	select `print`.`Title` AS `Название`,group_concat(distinct `authors`.`Author` order by `authors`.`Author` ASC separator ', ') AS `Авторы`,group_concat(distinct `genre`.`Genre` order by `genre`.`Genre` ASC separator ', ') AS `Жанры`,group_concat(distinct `keyword`.`Keyword` order by `keyword`.`Keyword` ASC separator ', ') AS `Ключевые_слова`,concat(`type_of_publication`.`Type_of_publication`,', ',`type_of_publication2`.`Type_of_publication2`) AS `Тип_публикации`,`publishing_house`.`Publishing_house` AS `Издательский_дом`,`city`.`City` AS `Город`,`print`.`Year` AS `Год`,`print`.`Cover` AS `Обложка` from ((((((((((`print` left join `printauthor` on((`print`.`IDprint` = `printauthor`.`IDprint`))) left join `authors` on((`printauthor`.`IDauthor` = `authors`.`IDauthor`))) left join `printgenre` on((`print`.`IDprint` = `printgenre`.`IDprint`))) left join `genre` on((`printgenre`.`IDgenre` = `genre`.`IDgenre`))) left join `printkeyword` on((`print`.`IDprint` = `printkeyword`.`IDprint`))) left join `keyword` on((`printkeyword`.`IDkeyword` = `keyword`.`IDkeyword`))) left join `type_of_publication` on((`print`.`IDtype_of_publication` = `type_of_publication`.`IDtype_of_publication`))) left join `type_of_publication2` on((`print`.`IDtype_of_publication2` = `type_of_publication2`.`IDtype_of_publication2`))) left join `city` on((`print`.`IDcity` = `city`.`IDcity`))) left join `publishing_house` on((`print`.`IDpublishing_house` = `publishing_house`.`IDpublishing_house`))) group by `print`.`Title`;

--
-- Описание для представления reader_groups_and_institutes
--
DROP VIEW IF EXISTS reader_groups_and_institutes CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW reader_groups_and_institutes
AS
	select `reader`.`FIO` AS `FIO`,`institute`.`Institute` AS `Institute`,`groups`.`Groups` AS `Groups` from ((`reader` join `groups` on((`groups`.`IDgroups` = `reader`.`IDgroups`))) join `institute` on((`institute`.`IDinstitute` = `groups`.`IDinstitute`)));

--
-- Описание для представления report3_lost
--
DROP VIEW IF EXISTS report3_lost CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'127.0.0.1'
VIEW report3_lost
AS
	select `print`.`Title` AS `Название`,count(`subscription`.`Lost`) AS `Потеряно`,`subscription`.`Paid` AS `Оплачено`,`subscription`.`IDsubscription` AS `IDsubscription`,`copy`.`IDcopy` AS `IDcopy`,`type_of_publication2`.`Type_of_publication2` AS `Тип_книги`,`print`.`Year` AS `Год`,group_concat(distinct `authors`.`Author` order by `authors`.`Author` ASC separator ', ') AS `Авторы` from ((((((`copy` left join `subscription` on((`copy`.`IDcopy` = `subscription`.`IDcopy`))) left join `reader` on((`subscription`.`IDreader` = `reader`.`IDreader`))) left join `print` on((`copy`.`IDprint` = `print`.`IDprint`))) left join `type_of_publication2` on((`print`.`IDtype_of_publication2` = `type_of_publication2`.`IDtype_of_publication2`))) left join `printauthor` on((`print`.`IDprint` = `printauthor`.`IDprint`))) left join `authors` on((`printauthor`.`IDauthor` = `authors`.`IDauthor`))) where (`subscription`.`Lost` = 1) group by `authors`.`Author`;

--
-- Описание для представления report5_debts
--
DROP VIEW IF EXISTS report5_debts CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'127.0.0.1'
VIEW report5_debts
AS
	select `groups`.`Groups` AS `Группа`,`reader`.`FIO` AS `ФИО`,`print`.`Title` AS `Название`,`subscription`.`Actual_date_of_return` AS `Дата_возврата`,count(`print`.`Title`) AS `Количество`,`print`.`Year` AS `Год`,group_concat(distinct `authors`.`Author` order by `authors`.`Author` ASC separator ', ') AS `Авторы` from (((((((`copy` left join `subscription` on((`copy`.`IDcopy` = `subscription`.`IDcopy`))) left join `reader` on((`subscription`.`IDreader` = `reader`.`IDreader`))) left join `print` on((`copy`.`IDprint` = `print`.`IDprint`))) left join `type_of_publication2` on((`print`.`IDtype_of_publication2` = `type_of_publication2`.`IDtype_of_publication2`))) left join `groups` on((`groups`.`IDgroups` = `reader`.`IDgroups`))) left join `printauthor` on((`print`.`IDprint` = `printauthor`.`IDprint`))) left join `authors` on((`printauthor`.`IDauthor` = `authors`.`IDauthor`))) where ((`groups`.`Groups` is not null) and isnull(`subscription`.`Actual_date_of_return`)) group by `authors`.`Author` order by `groups`.`Groups`,`reader`.`FIO`;

--
-- Описание для представления report6_reader_stat
--
DROP VIEW IF EXISTS report6_reader_stat CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'127.0.0.1'
VIEW report6_reader_stat
AS
	select `groups`.`Groups` AS `Группа`,`reader`.`FIO` AS `ФИО`,`print`.`Title` AS `Название`,`subscription`.`Date_of_issue` AS `Дата_выдачи`,`subscription`.`Expected_date_of_returnt` AS `Ожидаемая_дата_возврата`,`subscription`.`Actual_date_of_return` AS `Дата_возврата`,(case when ((`subscription`.`Actual_date_of_return` - `subscription`.`Expected_date_of_returnt`) < 0) then 0 else (`subscription`.`Actual_date_of_return` - `subscription`.`Expected_date_of_returnt`) end) AS `Просрочено`,group_concat(distinct `authors`.`Author` order by `authors`.`Author` ASC separator ', ') AS `Авторы`,`print`.`Year` AS `Год` from ((((((`copy` left join `subscription` on((`copy`.`IDcopy` = `subscription`.`IDcopy`))) left join `reader` on((`subscription`.`IDreader` = `reader`.`IDreader`))) left join `print` on((`copy`.`IDprint` = `print`.`IDprint`))) left join `groups` on((`reader`.`IDgroups` = `groups`.`IDgroups`))) left join `printauthor` on((`print`.`IDprint` = `printauthor`.`IDprint`))) left join `authors` on((`printauthor`.`IDauthor` = `authors`.`IDauthor`))) where (`subscription`.`Actual_date_of_return` is not null) group by `authors`.`Author`,(`subscription`.`Actual_date_of_return` - `subscription`.`Expected_date_of_returnt`) order by `groups`.`Groups`,`reader`.`FIO`;

--
-- Описание для представления report7_copy_stat
--
DROP VIEW IF EXISTS report7_copy_stat CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'127.0.0.1'
VIEW report7_copy_stat
AS
	select `print`.`Title` AS `Название`,`subscription`.`IDsubscription` AS `IDsubscription`,`copy`.`IDcopy` AS `IDcopy`,count(`copy`.`IDcopy`) AS `На_руках`,`copy`.`Quantity` AS `В_библиотеке`,(count(`copy`.`IDcopy`) + `copy`.`Quantity`) AS `Общее`,group_concat(distinct `authors`.`Author` order by `authors`.`Author` ASC separator ', ') AS `Авторы`,`print`.`Year` AS `Год` from (((((`copy` left join `subscription` on((`copy`.`IDcopy` = `subscription`.`IDcopy`))) left join `reader` on((`subscription`.`IDreader` = `reader`.`IDreader`))) left join `print` on((`copy`.`IDprint` = `print`.`IDprint`))) left join `printauthor` on((`print`.`IDprint` = `printauthor`.`IDprint`))) left join `authors` on((`printauthor`.`IDauthor` = `authors`.`IDauthor`))) where (`subscription`.`IDsubscription` is not null) group by `authors`.`Author`,`copy`.`IDcopy` order by `print`.`Title`;

--
-- Описание для представления report8_taken_books
--
DROP VIEW IF EXISTS report8_taken_books CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'127.0.0.1'
VIEW report8_taken_books
AS
	select `reader`.`FIO` AS `ФИО`,`print`.`Title` AS `Название`,`subscription`.`Date_of_issue` AS `Дата_выдачи`,`subscription`.`Expected_date_of_returnt` AS `Ожидаемая_дата_возврата`,`subscription`.`Actual_date_of_return` AS `Дата_возврата`,`subscription`.`IDsubscription` AS `IDsubscription`,`copy`.`IDcopy` AS `IDcopy`,`type_of_publication2`.`Type_of_publication2` AS `Тип_публикации`,group_concat(distinct `authors`.`Author` order by `authors`.`Author` ASC separator ', ') AS `Авторы`,`print`.`Year` AS `Год` from ((((((`copy` left join `subscription` on((`copy`.`IDcopy` = `subscription`.`IDcopy`))) left join `reader` on((`subscription`.`IDreader` = `reader`.`IDreader`))) left join `print` on((`copy`.`IDprint` = `print`.`IDprint`))) left join `type_of_publication2` on((`type_of_publication2`.`IDtype_of_publication2` = `print`.`IDtype_of_publication2`))) left join `printauthor` on((`print`.`IDprint` = `printauthor`.`IDprint`))) left join `authors` on((`printauthor`.`IDauthor` = `authors`.`IDauthor`))) where (`subscription`.`Date_of_issue` is not null) group by `reader`.`FIO`,`subscription`.`Date_of_issue`,`authors`.`Author` order by `subscription`.`Date_of_issue`,`type_of_publication2`.`Type_of_publication2`;

--
-- Описание для представления subscription_reader_groups_and_institutes
--
DROP VIEW IF EXISTS subscription_reader_groups_and_institutes CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW subscription_reader_groups_and_institutes
AS
	select `reader`.`FIO` AS `FIO`,`print`.`Title` AS `Title` from (((`reader` join `subscription` on((`reader`.`IDreader` = `subscription`.`IDreader`))) join `copy` on((`subscription`.`IDcopy` = `copy`.`IDcopy`))) join `print` on((`copy`.`IDprint` = `print`.`IDprint`)));

--
-- Описание для представления subscription_view
--
DROP VIEW IF EXISTS subscription_view CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'%'
VIEW subscription_view
AS
	select `reader`.`IDreader` AS `IDreader`,`reader`.`FIO` AS `ФИО`,`print`.`Title` AS `Название`,`subscription`.`Date_of_issue` AS `Дата_выдачи`,`subscription`.`Expected_date_of_returnt` AS `Ожидаемая_дата_возврата`,`subscription`.`Actual_date_of_return` AS `Дата_возврата`,`print`.`Cover` AS `Обложка`,`subscription`.`Lost` AS `Потеряно`,`subscription`.`Paid` AS `Оплачено`,`subscription`.`IDsubscription` AS `IDsubscription`,`subscription`.`Lost` AS `Lost`,`copy`.`IDcopy` AS `IDcopy` from (((`copy` left join `subscription` on((`copy`.`IDcopy` = `subscription`.`IDcopy`))) left join `reader` on((`subscription`.`IDreader` = `reader`.`IDreader`))) left join `print` on((`copy`.`IDprint` = `print`.`IDprint`)));

-- 
-- Вывод данных для таблицы added_author
--
INSERT INTO added_author VALUES
(3, 'rt', 'root@%'),
(3, 'bn', 'root@%'),
(3, 'gh', 'root@%'),
(1, 'вспамрп', 'root@%'),
(3, 'впвара', 'root@%');

-- 
-- Вывод данных для таблицы authors
--
INSERT INTO authors VALUES
(1, 'Зотин А.Г.'),
(2, 'Пахирка А.И.'),
(3, 'Фаворская М.Н.'),
(12, 'Буряченко'),
(13, 'Николаев Павел'),
(15, 'Михайлов'),
(19, 'Зотин'),
(20, 'Милухова'),
(21, 'кто-то там ещё'),
(22, 'Сарычев'),
(23, 'ывыв'),
(24, 'оалвао'),
(25, 'ывс'),
(26, 'Стив Макконнелл'),
(27, 'Есенин');

-- 
-- Вывод данных для таблицы city
--
INSERT INTO city VALUES
(1, 'Красноярск'),
(2, 'Иркутск'),
(3, 'Москва'),
(4, 'Санкт-Петербург'),
(5, 'Екатеринбург'),
(6, 'Владивосток'),
(7, 'Севастополь'),
(8, 'Новосибирск');

-- 
-- Вывод данных для таблицы genre
--
INSERT INTO genre VALUES
(1, 'Учебная литература'),
(2, 'Роман'),
(3, 'Рассказ'),
(4, 'Повесть'),
(5, 'Эпопея'),
(6, 'Сказка'),
(7, 'Очерк'),
(8, 'Стих'),
(10, 'Научная литература'),
(11, 'ужасы'),
(12, 'Романтика'),
(13, 'триллер'),
(14, 'влолав'),
(15, 'Мастер-класс'),
(16, 'Поэзия'),
(17, 'стихи');

-- 
-- Вывод данных для таблицы guest_book
--
INSERT INTO guest_book VALUES
(7, '2015-12-08 20:26:35', 'Павел', '1@1', 'Верстка была переработана почти полностью.', '1');

-- 
-- Вывод данных для таблицы institute
--
INSERT INTO institute VALUES
(1, 'ИИТК'),
(2, 'ИКТ');

-- 
-- Вывод данных для таблицы keyword
--
INSERT INTO keyword VALUES
(1, 'База данных'),
(2, 'Базы данных'),
(3, 'Данные'),
(4, 'База'),
(5, 'web'),
(6, 'веб'),
(7, 'верстка'),
(8, 'php'),
(10, 'стихи'),
(11, 'романтика'),
(12, 'хорошее настроение'),
(14, 'жесть'),
(15, 'курсовая'),
(16, 'зотин'),
(17, 'ываыва'),
(18, 'стив'),
(19, 'макконелл'),
(20, 'microsoft'),
(21, 'программирование'),
(22, 'поэзия'),
(23, 'есенин'),
(24, 'классика');

-- 
-- Вывод данных для таблицы librarians
--
INSERT INTO librarians VALUES
(1, '1', 'YzRjYTQyMzhhMGI5MjM4MjBkY2M1MDlhNmY3NTg0OWI=', 'readers'),
(3, '3', 'YzRjYTQyMzhhMGI5MjM4MjBkY2M1MDlhNmY3NTg0OWI=', 'catalog'),
(4, '45', 'NmM4MzQ5Y2M3MjYwYWU2MmUzYjEzOTY4MzFhODM5OGY=', NULL),
(5, '555', 'MTVkZTIxYzY3MGFlN2MzZjZmM2YxZjM3MDI5MzAzYzk=', NULL),
(6, '2', 'YzgxZTcyOGQ5ZDRjMmY2MzZmMDY3Zjg5Y2MxNDg2MmM=', NULL),
(8, 'Иван', 'ODI3Y2NiMGVlYThhNzA2YzRjMzRhMTY4OTFmODRlN2I=', NULL),
(9, 'admin', 'MjEyMzJmMjk3YTU3YTVhNzQzODk0YTBlNGE4MDFmYzM=', 'readers');

-- 
-- Вывод данных для таблицы publishing_house
--
INSERT INTO publishing_house VALUES
(1, 'СибГАУ'),
(2, 'Питер'),
(3, 'Русская редакция');

-- 
-- Вывод данных для таблицы repository
--
INSERT INTO repository VALUES
(1, 'Читальный зал'),
(2, 'Зал выдачи');

-- 
-- Вывод данных для таблицы section
--
INSERT INTO section VALUES
(1, 'Компьютерная литература'),
(2, 'Английский язык'),
(3, 'Поэтическая литература');

-- 
-- Вывод данных для таблицы state
--
INSERT INTO state VALUES
(1, 'Плохое'),
(2, 'Не удовлетворительное'),
(3, 'Удовлетворительное'),
(4, 'Хорошее'),
(5, 'Отличное');

-- 
-- Вывод данных для таблицы subs_audit
--
INSERT INTO subs_audit VALUES
(1, '2015-07-16', '2015-07-17', 'root@%', '2015-11-02 22:15:43'),
(2, '2015-07-17', '2015-07-16', 'root@%', '2015-11-02 22:16:27'),
(3, '2015-11-04', '2015-11-05', 'root@%', '2015-11-03 15:29:25'),
(4, '2015-11-05', '2015-11-14', 'root@%', '2015-11-03 15:42:26'),
(5, '2015-11-14', '2015-11-11', 'root@%', '2015-11-17 15:13:12'),
(6, NULL, NULL, 'root@%', '2015-11-25 17:41:50'),
(7, '2015-12-11', '2015-12-11', 'root@%', '2015-12-11 21:02:02'),
(8, '2015-12-10', '2015-12-10', 'root@%', '2015-12-11 21:04:34'),
(9, '2015-12-16', '2015-12-16', 'root@%', '2015-12-16 20:06:44'),
(10, '2015-07-16', '2015-07-16', 'root@%', '2015-12-16 21:20:18'),
(11, '2015-11-11', '2015-11-11', 'root@%', '2015-12-16 21:20:21'),
(12, NULL, NULL, 'root@%', '2015-12-16 21:20:24'),
(13, NULL, NULL, 'root@%', '2015-12-16 21:20:26'),
(14, '2015-12-11', '2015-12-11', 'root@%', '2015-12-16 21:20:29'),
(15, '2015-12-10', '2015-12-10', 'root@%', '2015-12-16 21:20:32'),
(16, '2015-12-16', '2015-12-16', 'root@%', '2015-12-16 21:20:36'),
(17, NULL, '2015-12-16', 'root@%', '2015-12-16 21:20:48'),
(18, NULL, NULL, 'root@%', '2015-12-16 21:26:49'),
(19, NULL, NULL, 'root@%', '2015-12-16 21:27:06'),
(20, NULL, NULL, 'root@%', '2015-12-16 21:41:41'),
(21, '2015-12-10', '2015-12-10', 'root@%', '2015-12-16 21:54:47'),
(22, '2015-12-10', '2015-12-10', 'root@%', '2015-12-16 21:55:26'),
(23, NULL, '2015-12-09', 'root@%', '2015-12-16 21:55:35'),
(24, '2015-12-09', '2015-12-09', 'root@%', '2015-12-16 21:55:41'),
(25, NULL, '2015-12-18', 'root@%', '2015-12-18 22:44:18'),
(26, '2015-12-11', '2015-12-11', 'root@%', '2015-12-18 22:44:33');

-- 
-- Вывод данных для таблицы type_of_publication
--
INSERT INTO type_of_publication VALUES
(1, 'Книга'),
(2, 'Брошюра'),
(3, 'Газета'),
(4, 'Журнал');

-- 
-- Вывод данных для таблицы type_of_publication2
--
INSERT INTO type_of_publication2 VALUES
(1, 'Лабораторный практикум'),
(2, 'Учебное пособие'),
(3, 'Учебник'),
(4, 'Сборник задач'),
(5, 'Сборник стихов');

-- 
-- Вывод данных для таблицы groups
--
INSERT INTO groups VALUES
(1, 1, 'БПИ12-01'),
(2, 2, 'БИС12-01');

-- 
-- Вывод данных для таблицы print
--
INSERT INTO print VALUES
(1, 'Базы данных', 4, 1, 2, 3, 2015, 'no-cover.jpg'),
(3, 'Веб', 1, 2, 2, 2, 2015, 'no-cover.jpg'),
(4, 'PHP', 3, 2, 1, 2, 2014, 'no-cover.jpg'),
(17, 'Лабораторные работы', 1, 1, 1, 7, 2012, 'no-cover.jpg'),
(19, 'Стихи', 4, 4, 2, 4, 2015, '123.jpg'),
(22, 'Совершенный код', 1, 3, 3, 3, 2013, 'AJVuEpf.jpg'),
(23, 'Есенин, поэмы', 1, 5, 2, 4, 2013, 'Есенин.bmp');

-- 
-- Вывод данных для таблицы copy
--
INSERT INTO copy VALUES
(1, 1, 4, 1, 2, 8, 500.00),
(2, 19, 2, 2, 2, 0, 12.00),
(3, 4, 5, 2, 1, 1, 120.00),
(4, 22, 5, 1, 1, 5, 1500.00),
(5, 17, 3, 1, 1, 7, 150.00),
(6, 23, 5, 1, 3, 4, 570.00);

-- 
-- Вывод данных для таблицы printauthor
--
INSERT INTO printauthor VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(14, 4, 12),
(15, 17, 12),
(19, 19, 20),
(20, 19, 21),
(25, 22, 26),
(26, 23, 27);

-- 
-- Вывод данных для таблицы printgenre
--
INSERT INTO printgenre VALUES
(1, 1, 1),
(4, 19, 12),
(8, 4, 1),
(9, 22, 15),
(10, 1, 10),
(11, 23, 16),
(12, 23, 17),
(13, 17, 1),
(15, 3, 15);

-- 
-- Вывод данных для таблицы printkeyword
--
INSERT INTO printkeyword VALUES
(1, 1, 1),
(2, 3, 5),
(3, 1, 3),
(4, 3, 7),
(7, 19, 10),
(8, 19, 11),
(9, 19, 12),
(15, 4, 5),
(16, 1, 5),
(17, 22, 18),
(18, 22, 19),
(19, 22, 20),
(20, 22, 21),
(21, 23, 22),
(22, 23, 10),
(23, 23, 23),
(24, 23, 24);

-- 
-- Вывод данных для таблицы reader
--
INSERT INTO reader VALUES
(4, '2015-11-14 15:56:40', 'Николаев П.В.', '2015-01-24', 1, 2, 'YzRjYTQyMzhhMGI5MjM4MjBkY2M1MDlhNmY3NTg0OWI=', '94f.png'),
(5, '2015-12-14 15:56:40', 'Путилин В.О.', '2015-07-23', 2, 1, 'YzRjYTQyMzhhMGI5MjM4MjBkY2M1MDlhNmY3NTg0OWI=', '123.jpg'),
(6, '2015-12-14 15:56:40', 'Михайлов И.М.', '2015-11-11', 3, 1, 'MjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzA=', 'no-photo.jpg'),
(20, '2015-12-19 09:31:30', 'Фадеев Андрей Евгеньевич', '1993-12-16', 12345, 1, 'MjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzA=', 'Снимок.PNG'),
(21, '2015-12-19 09:41:26', 'Лосоногов Никита Алексеевич', '1994-10-25', 123, 1, 'MjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzA=', '557155.png'),
(22, '2015-12-22 13:48:08', NULL, NULL, NULL, NULL, 'MjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzA=', NULL),
(23, '2015-12-22 13:48:08', NULL, NULL, NULL, NULL, 'MjAyY2I5NjJhYzU5MDc1Yjk2NGIwNzE1MmQyMzRiNzA=', NULL);

-- 
-- Вывод данных для таблицы faq
--
INSERT INTO faq VALUES
(8, '2015-12-13 20:58:55', 'Павел', 4, 'Доколе? ДОКОЛЕ Я ВАС СПРАШИВАЮ???', 'АТАШОЛ! АТАШОЛ Я СКАЗАЛ!!!', 1, 5),
(9, '2015-12-13 21:07:34', 'Андрей', 4, 'Не могу найти книгу из вашей библиотеки. Что будет, если я её не сдам?..', 'Печень выну.', 6, 5),
(10, '2015-12-13 21:35:55', 'Иван', 4, 'Как вы относитесь к Путину?', 'Царь, просто царь.', 6, 1),
(11, '2015-12-13 21:52:17', 'Владислав', 4, 'Ваша книга напала на меня. Что делать?', 'Помолитесь Путину. Солнцеликий поможет вам.', 6, 5),
(12, '2015-12-14 14:17:05', 'Никита', 4, 'Смените дизайн сайта, мне не нравится.', 'Слышали? Никите не нравится. Бегом менять дизайн!', 8, 4),
(13, '2015-12-15 10:37:31', 'Дмитрий Анатольевич', 4, 'Хороший сайт! Мне бы понравился дизайн, если бы я открыл глаза. Но я сплю. И меня нет.', 'Просыпайся, дурень. Работать пора!\r\n--В.В.', 8, 2);

-- 
-- Вывод данных для таблицы subscription
--
INSERT INTO subscription VALUES
(1, 5, 1, '2015-07-16', '2015-07-11', '2015-07-16', 0, 0.00),
(2, 5, 2, '2015-11-11', '2015-11-19', '2015-11-27', 0, 0.00),
(3, 6, 2, '2015-12-18', '2015-12-18', '2015-12-18', 0, 0.00),
(4, 4, 1, '2015-12-14', '2015-12-21', NULL, 1, 1.00),
(5, 4, 2, '2015-12-11', '2015-12-17', NULL, 1, 0.00),
(19, 4, 4, '2015-12-18', '2015-12-19', '2015-12-24', 0, 0.00),
(20, 4, 2, '2015-12-18', '2015-12-26', '2015-12-24', 0, 0.00),
(21, 4, 4, '2015-12-18', '2015-12-19', '2015-12-31', 0, 0.00),
(22, 4, 4, '2015-12-19', '2015-12-19', NULL, 1, 15000.00),
(23, 20, 4, '2015-12-18', '2015-12-23', '2015-12-30', 0, 0.00),
(24, 4, 1, '2015-12-17', '2015-12-23', NULL, 1, 5000.00),
(25, 4, 2, '2015-12-14', '2015-12-20', NULL, 0, 0.00),
(26, 5, 3, '2015-12-15', '2015-12-20', NULL, 0, 0.00),
(27, 4, 6, '2015-12-26', '2015-12-31', NULL, 0, 0.00),
(28, 4, 1, '2015-12-26', '2015-12-31', NULL, 0, 0.00),
(29, 4, 4, '2015-12-26', '2015-12-31', NULL, 0, 0.00),
(30, 4, 5, '2015-12-17', '2015-12-31', NULL, 0, 0.00),
(31, 4, 5, '2015-12-25', '2015-12-31', NULL, 0, 0.00);

-- 
-- Вывод данных для таблицы lost
--
INSERT INTO lost VALUES
(1, NULL, NULL, 0.00, NULL);

DELIMITER $$

--
-- Описание для триггера copy_minus
--
DROP TRIGGER IF EXISTS copy_minus$$
CREATE 
	DEFINER = 'root'@'127.0.0.1'
TRIGGER copy_minus
	AFTER INSERT
	ON subscription
	FOR EACH ROW
BEGIN
  UPDATE copy SET Quantity=Quantity-1 WHERE IDcopy=NEW.IDcopy;
END
$$

DELIMITER ;

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;