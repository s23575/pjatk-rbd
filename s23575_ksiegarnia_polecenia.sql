# < - - Skrypt tworzący bazę - - >

create database if not exists s23575;

# < - - 5 tablic nie licząc tablic pośredniczących - - >
# < - - char lub varchar, int, float, bool, date, timestamp - - >

create table autor (
    id int auto_increment primary key,
    imie varchar(30),
    nazwisko varchar(30) not null,
    data_ur smallint,
    data_sm smallint
);

create table ksiazka (
    id int auto_increment primary key,
    tytul varchar(255) not null,
    tytul_oryg varchar(255)
);

create table wydanie (
    id int auto_increment primary key,
    rok year(4),
    numer tinyint,
    isbn varchar(17) not null,
    oprawa enum('miekka','twarda') not null,
    cena float(4,2) not null,
    wydawnictwo varchar(45) not null,
    ksiazka_id int not null,
    foreign key (ksiazka_id) references ksiazka(id)
);

create table tlumacz (
    id int auto_increment primary key,
    imie varchar(30),
    nazwisko varchar(30) not null
);

create table adres_hurtownik(
    id int auto_increment primary key,
    ulica varchar(60),
    nr_domu smallint not null,
    nr_mieszkania smallint,
    kod_pocztowy char(6) not null,
    miejscowosc varchar(30) not null
);

create table hurtownik (
    id int auto_increment primary key,
    firma varchar(60) not null,
    nip char(10) not null,
    rachunek char(26) not null,
    telefon varchar(9) not null,
    email varchar(45) not null,
    adres_id int not null,
    foreign key (adres_id) references adres_hurtownik(id)
);

create table sposob_dostawy (
    id int auto_increment primary key,
    nazwa enum('kurier','odbior','paczkomat') not null,
    czas tinyint not null,
    cena float(4,2) not null
);

create table adres_klient(
    id int auto_increment primary key,
    ulica varchar(60),
    nr_domu smallint not null,
    nr_mieszkania smallint,
    kod_pocztowy char(6) not null,
    miejscowosc varchar(30) not null
);

create table klient (
    id int auto_increment primary key,
    imie varchar(30) not null,
    nazwisko varchar(30) not null,
    firma varchar(60),
    nip char(10),
    login varchar(30) not null,
    haslo varchar(30) not null,
    telefon varchar(9) not null,
    email varchar(45) not null,
    adres_id int not null,
    potwierdzony boolean not null,
    foreign key (adres_id) references adres_klient(id)
);

create table zamowienie (
    id int auto_increment primary key,
    data_zlozenia datetime not null,
    data_platnosci date,
    data_wysylki date,
    data_doreczenia date,
    platnosc enum('karta','przelew','pobranie') not null,
    sposob_dostawy_id int not null,
    klient_id int not null,
    foreign key (sposob_dostawy_id) references sposob_dostawy(id),
    foreign key (klient_id) references klient(id)
);

create table log (
    czas timestamp not null default current_timestamp,
    zdarzenie varchar(255),
    komentarz varchar(255)
);

# < - - 3 związki wiele-do-wiele - - >

create table k_a (
    id int auto_increment primary key,
    ksiazka_id int not null,
    autor_id int not null,
    foreign key (ksiazka_id) references ksiazka(id),
    foreign key (autor_id) references autor(id)
);

create table w_t (
    id int auto_increment primary key,
    wydanie_id int not null,
    tlumacz_id int not null,
    foreign key (wydanie_id) references wydanie(id),
    foreign key (tlumacz_id) references tlumacz(id)
#    foreign key (tlumacz_id) references tlumacz(id) on delete cascade
);

create table w_h (
    id int auto_increment primary key,
    wydanie_id int not null,
    hurtownik_id int not null,
    liczba_dostep smallint not null,
    czas tinyint not null,
    koszt float(4,2) not null,
    foreign key (wydanie_id) references wydanie(id),
    foreign key (hurtownik_id) references hurtownik(id)
);

create table w_z (
    id int auto_increment primary key,
    wydanie_id int not null,
    zamowienie_id int not null,
    liczba_zamow smallint not null,
    foreign key (wydanie_id) references wydanie(id),
    foreign key (zamowienie_id) references zamowienie(id)
);

# < - - trzeba wypełnić tablice przynajmniej 20 rekordami każda - - >
# < - - dane muszą być spójne(np. samochod istniejacej marki) - - >

insert into autor
    (imie, nazwisko, data_ur, data_sm)
values
    ('Fiodor','Dostojewski',1821,1881),
    ('Jacek','Dukaj',1974,null),
    ('Joseph','Conrad',1857,1924),
    ('Andrzej','Stasiuk',1960,null),
    ('Władysław','Reymont',1867,1925),
    ('Terry','Pratchett',1948,2015),
    ('Herman','Melville',1819,1891),
    ('Giuseppe','Tomasi di Lampedusa',1896,1957),
    ('James','Joyce',1882,1941),
    ('Michaił','Bułhakow',1891,1940),
    ('Szczepan','Twardoch',1979,null),
    ('Marcel','Proust',1871,1922),
    ('Olga','Tokarczuk',1962,null),
    ('Marek','Hłasko',1934,1969),
    ('Samuel','Beckett',1906,1989);

insert into ksiazka
    (tytul, tytul_oryg)
values
    ('Zbrodnia i kara','Priestuplenije i nakazanije'),
    ('Bracia Karamazow','Bratya Karamazovy'),
    ('Katedra',null),
    ('Imperium chmur',null),
    ('Jądro ciemności','Heart of Darkness'),
    ('Serce ciemności','Heart of Darkness'),
    ('Lord Jim','Lord Jim'),
    ('Jadąc do Babadag',null),
    ('Ziemia obiecana',null),
    ('Kolor magii','The Colour of Magic'),
    ('Moby Dick czyli biały wieloryb','Moby-Dick; or, The Whale'),
    ('Gepard','Il Gattopardo'),
    ('Ulisses','Ulysses'),
    ('Mistrz i Małgorzata','Mastier i Margarita '),
    ('Król',null),
    ('Królestwo',null),
    ('W stronę Swanna','Du côté de chez Swann'),
    ('Księgi Jakubowe',null),
    ('Pierwszy krok w chmurach. Opowiadania',null),
    ('Utwory wybrane. Dramaty, słuchowiska, scenariusze',null);

insert into wydanie
    (rok, numer, isbn, oprawa, cena, wydawnictwo, ksiazka_id)
values
    (2015,1,'978-83-777-9221-6','twarda',49.9,'Znak',1),
    (2019,null,'978-83-280-6779-0','miekka',24.99,'Wilga',1),
    (2004,1,'978-83-240-1263-3','twarda',65.9,'Znak',2),
    (2017,null,'978-83-08-07320-9','miekka',24.9,'Wydawnictwo Literackie',3),
    (2020,1,'978-83-08-07471-8','twarda',49.9,'Wydawnictwo Literackie',4),
    (2021,2,'978-83-240-6405-2','twarda',39.99,'Znak',5),
    (2017,1,'978-83-08-06417-7','twarda',28,'Wydawnictwo Literackie',6),
    (2021,2,'978-83-240-6401-4','twarda',49.99,'Znak',7),
    (2021,5,'978-83-8191-140-5','twarda',44.9,'Czarne',8),
    (2008,1,'978-83-8739-197-2','twarda',39,'Czarne',8),
    (2014,null,'978-83-6105-669-0','twarda',35,'Ossolineum',9),
    (2021,null,'978-83-8234-081-5','miekka',35,'Prószyński i s-ka',10),
    (2005,null,'978-83-7469-097-3','miekka',29.9,'Prószyński i s-ka',10),
    (2018,null,'978-83-06-03500-1','twarda',59,'Państwowy Instytut Wydawniczy',11),
    (2019,null,'978-83-950-4558-5','miekka',35,'Czuły Barbarzyńca',12),
    (2012,null,'978-83-240-1879-6','twarda',64.9,'Znak',13),
    (2021,null,'978-83-665-1142-2','twarda',69.9,'Officyna',13),
    (2018,null,'978-83-06-03527-8','twarda',59,'Państwowy Instytut Wydawniczy',14),
    (2016,1,'978-83-080-6224-1','miekka',44.9,'Znak',15),
    (2020,2,'978-83-080-7095-6','miekka',44.9,'Wydawnictwo Literackie',15),
    (2018,1,'978-83-080-6800-7','miekka',44.9,'Znak',16),
    (2018,null,'978-83-624-0979-2','twarda',49.9,'Officyna',17),
    (2021,2,'978-83-080-7328-5','twarda',74.9,'Wydawnictwo Literackie',18),
    (2019,null,'978-83-244-1027-9','miekka',29.9,'Iskry',19),
    (2017,null,'978-83-06-03406-6','twarda',59,'Państwowy Instytut Wydawniczy',20);

insert into tlumacz
    (imie, nazwisko)
values
    ('J.P.','Zajączkowski'),
    ('Czesław','Jastrzębiec-Kozłowski'),
    ('Adam','Pomorski'),
    ('Magda ','Heydel'),
    ('Jacek','Dukaj'),
    ('Michał','Kłobukowski'),
    ('Piotr W.','Cholewa'),
    ('Bronisław ','Zieliński'),
    ('Stanisław','Kasprzysiak'),
    ('Maciej','Słomczyński'),
    ('Maciej','Świerkocki'),
    ('Irena','Lewandowska'),
    ('Witold','Dąbrowski'),
    ('Krystyna ','Rodowska'),
    ('Antoni','Libera');

insert into adres_hurtownik
    (ulica, nr_domu, nr_mieszkania, kod_pocztowy, miejscowosc)
values
    ('Kujawska',22,24,'06-856','Olsztyn'),
    ('Leśna',6,64,'80-314','Szczecin'),
    ('Długa',18,85,'14-259','Opole'),
    ('Miodowa',56,17,'74-310','Piotrków Trybunalski'),
    ('Klasztorna',42,57,'22-435','Łomża');

insert into hurtownik
    (firma, nip, rachunek, telefon, email, adres_id)
values
    ('Maria Górecka Hurtownia Książek','6112801659','59195000726373426397822790','891907963','maria_gorecka@icloud.edu',1),
    ('Marika Bednarczyk Hurtownik','7273023162','21105073179148959773683270','838697752','marika_bednarczyk@aol.com',2),
    ('Sprzedaż Hurtowa Książek Marcin Stasiak','8573657210','46101048778583610156774097','671424076','marcin_stasiak@hotmail.net',3),
    ('Działalność Handlowa Aurelia Chmielewska','4292232652','89103014941718207129926749','826257554','aurelia_chmielewska@aol.edu',4),
    ('Marzanna Piątek Hurt i Detal','4879109760','76105012698281215798589496','840788726','marzanna_piatek@hotmail.com',5);

insert into sposob_dostawy
    (nazwa, czas, cena)
values
    ('kurier',2,15),
    ('odbior',1,0),
    ('paczkomat',3,9.9);

insert into adres_klient
    (ulica, nr_domu, nr_mieszkania, kod_pocztowy, miejscowosc)
values
    ('Matejki',67,87,'46-559','Gdańsk'),
    ('Bema',48,62,'94-293','Tarnobrzeg'),
    ('Orki',85,5,'17-289','Konin'),
    ('Piastowska',32,61,'67-390','Wałbrzych'),
    ('Jarzębinowa',50,21,'27-801','Częstochowa'),
    ('Widok',20,23,'38-208','Płock'),
    ('Orzeszkowej',24,95,'02-969','Jelenia Góra'),
    ('Herbaciana',4,73,'83-488','Gdańsk'),
    ('Kadetów',87,76,'73-781','Katowice'),
    ('Sosnowa',81,57,'67-970','Zabrze'),
    ('Modra',94,78,'81-113','Sosnowiec'),
    ('Kujawska',12,92,'87-486','Kielce'),
    ('Słowiańska',86,63,'20-416','Nowy Sącz'),
    ('PCK',8,79,'59-372','Sosnowiec'),
    ('Struga',73,42,'44-655','Kielce');

insert into klient
    (imie, nazwisko, firma, nip, login, haslo, telefon, email, potwierdzony, adres_id)
values
    ('Nataniel','Jankowski',null,null,'nataniel_517','!GzMj)jf','966583298','nataniel_517@aol.com',true,1),
    ('Teofila','Wiśniewska',null,null,'teofila_36','m^u1jiTT,:','986321064','teofila_36@aol.com',true,2),
    ('Oleksandr','Nowicki','Oleksandr Nowicki działalność gospodarcza','6125294880','oleksandr_880','-]:7n[','725380912','oleksandr_880@google.edu',true,3),
    ('Kinga','Kopeć',null,null,'kinga_300','h.ZYscg','837725807','kinga_300@icloud.edu',true,4),
    ('Marianna','Sosnowska',null,null,'marianna_704','8kcdbjQ','758616180','marianna_704@aol.com',true,5),
    ('Ludmiła','Stefańska','Ludmiła Stefańska działalność gospodarcza','3598813690','ludmila_337','?S.2gq<','999276968','ludmila_337@hotmail.net',true,6),
    ('Bartłomiej','Sikora',null,null,'bartlomiej_645','z8Tlx&','661536237','bartlomiej_645@aol.edu',true,7),
    ('Kuba','Krajewski',null,null,'kuba_465','bXvZ+ew','789299849','kuba_465@hotmail.com',true,8),
    ('Melania','Pawlik','Melania Pawlik działalność gospodarcza','3583693699','melania_955','ft3a,`2Oz','829293828','melania_955@google.edu',true,9),
    ('Henryk','Barański','Henryk Barański działalność gospodarcza','6223500955','henryk_255','WyRZpkOe9','629600387','henryk_255@protonmail.edu',true,10),
    ('Gertruda','Sikorska',null,null,'gertruda_512','cU)B6q','718180772','gertruda_512@yahoo.couk',true,11),
    ('Mirosław','Nowak',null,null,'mirosław_926','6BM*?>X','812791477','mirosław_926@google.edu',true,12),
    ('Maksym','Krupa','Maksym Krupa działalność gospodarcza','9555005940','maksym_207','.rP_`]','671734606','maksym_207@aol.net',true,13),
    ('Marlena','Milewska','Marlena Milewska działalność gospodarcza','9588573572','marlena_256','A8ilLm','682692100','marlena_256@icloud.ca',false,14),
    ('Jadwiga','Pawlak',null,null,'jadwiga_346','_r9Qt`','903414733','jadwiga_346@protonmail.net',false,15);

# Przykład spójności danych: przy metodzie płatności "pobranie" i sposobie dostawy "odbior" (id: 2) data płatności
# i data doręczenia (odbioru) powinny być takie same (jeśli zamówienie odebrano - nie jest ono "nullem":

insert into zamowienie
    (data_zlozenia, data_platnosci, data_wysylki, data_doreczenia, platnosc, sposob_dostawy_id, klient_id)
values
    ('2021-12-30 22:27:37','2022-01-02','2022-01-02','2022-01-05','przelew',3,7),
    ('2021-12-31 18:25:39','2022-01-07','2022-01-07','2022-01-07','pobranie',2,7),
    ('2021-12-30 9:5:8','2022-01-04','2022-01-06',null,'przelew',3,13),
    ('2021-12-31 17:25:19','2022-01-06','2022-01-06','2022-01-06','pobranie',2,2),
    ('2022-01-03 19:12:30',null,'2022-01-07',null,'pobranie',1,13),
    ('2022-01-03 19:16:59','2022-01-03','2022-01-06','2022-01-07','karta',2,12),
    ('2022-01-03 23:36:50','2022-01-08','2022-01-08','2022-01-08','pobranie',2,9),
    ('2021-12-28 19:16:12','2021-12-30','2022-01-04','2022-01-08','przelew',3,9),
    ('2021-12-30 13:58:58',null,null,null,'przelew',1,7),
    ('2021-12-28 8:8:13','2022-01-03','2022-01-03','2022-01-05','przelew',1,1),
    ('2021-12-29 14:53:51','2021-12-29','2022-01-04',null,'karta',2,3),
    ('2022-01-02 16:35:13','2022-01-02',null,null,'karta',1,7),
    ('2021-12-31 8:9:11','2022-01-08','2022-01-05','2022-01-08','pobranie',3,5),
    ('2022-01-03 11:3:50',null,'2022-01-06',null,'pobranie',3,7),
    ('2022-01-02 15:22:19','2022-01-03',null,null,'przelew',1,8),
    ('2022-01-01 23:21:53',null,null,null,'przelew',3,4),
    ('2021-12-29 14:23:26','2021-12-29','2022-01-02','2022-01-05','karta',3,5),
    ('2022-01-01 16:28:3',null,'2022-01-07',null,'pobranie',1,10),
    ('2021-12-28 13:49:55','2021-12-30','2022-01-01','2022-01-04','przelew',2,2),
    ('2021-12-31 8:57:18','2021-12-31','2022-01-07',null,'karta',3,4);

insert into k_a
    (ksiazka_id, autor_id)
values
    (1,1),(2,1),(3,2),(4,2),(5,3),(6,3),(7,3),(8,4),(9,5),(10,6),(11,7),(12,8),(13,9),(14,10),(15,11),(16,11),(17,12),(18,13),(19,14),(20,15);

insert into w_t
    (wydanie_id, tlumacz_id)
values
    (1,1),(2,2),(3,3),(6,4),(7,5),(8,6),(12,7),(13,7),(14,8),(15,9),(16,10),(17,11),(18,12),(18,13),(22,14),(25,15);

insert into w_h
    (wydanie_id, hurtownik_id, liczba_dostep, czas, koszt)
values
    (1,5,86,6,36.07),(1,1,33,3,39.08),
    (2,2,77,3,14.39),(2,5,14,5,16.97),(2,3,7,2,15),
    (3,5,50,5,41.75),(3,1,84,6,48.36),
    (4,2,4,6,19.03),(4,5,46,2,18.1),(4,1,70,2,15.74),
    (5,3,60,5,36.68),(5,5,94,2,31.11),(5,4,82,6,44.3),
    (6,1,11,2,36.55),(6,4,92,6,32.87),(6,3,72,2,36.98),
    (7,5,67,6,25.6),(7,2,83,2,16.95),(7,1,95,6,22.17),
    (8,1,87,4,42.15),
    (9,2,65,5,24.26),(9,4,27,2,28.72),(9,1,62,6,24.36),
    (10,5,26,2,22.43),(10,1,34,6,35.65),
    (11,2,12,2,28.79),(11,4,65,6,30.27),(11,5,56,6,32.89),
    (12,2,40,4,21.21),(12,1,22,5,21.54),(12,3,19,4,20.59),
    (13,1,42,5,16.08),(13,4,90,3,23.83),(13,2,5,2,16.35),
    (14,2,29,3,53.27),(14,3,10,3,37.29),(14,5,28,3,32.19),
    (15,4,21,2,32.23),(15,3,65,6,31.55),
    (16,5,31,4,37.68),(16,2,15,4,53.47),
    (17,4,48,6,48.95),(17,2,54,2,45.18),(17,5,64,3,40.36),
    (18,2,16,3,52.3),(18,4,2,6,36.49),(18,1,81,3,41.32),
    (19,2,64,3,32.43),(19,4,14,4,39.28),(19,5,48,6,27.69),
    (20,1,32,5,30.28),(20,3,33,3,34.74),(20,4,44,4,23.58),
    (21,3,97,4,29.38),(21,1,28,4,34.35),(21,4,76,6,29.07),
    (22,5,22,6,45.79),
    (23,3,22,5,70.01),(23,2,5,3,72.16),
    (24,3,87,3,18.5),(24,4,48,2,22.62),
    (25,4,46,6,37.46),(25,1,53,4,42.64),(25,2,40,5,34.53);

insert into w_z
    (wydanie_id, zamowienie_id, liczba_zamow)
values
    (10,1,1),
    (10,2,2),(18,2,1),
    (12,3,1),(14,3,2),(2,3,1),
    (20,4,2),(12,4,1),(24,4,2),(5,4,1),
    (17,5,1),
    (16,6,2),(11,6,1),
    (19,7,2),(23,7,2),(5,7,2),
    (25,8,1),(17,8,2),(20,8,1),(5,8,2),
    (19,9,1),
    (2,10,1),(19,10,2),
    (2,11,1),(17,11,2),(14,11,2),
    (15,12,1),(9,12,2),(11,12,1),(13,12,1),
    (10,13,1),
    (19,14,2),(14,14,1),
    (11,15,1),(1,15,2),(18,15,1),
    (20,16,2),(23,16,1),(13,16,1),(11,16,2),
    (13,17,1),
    (3,18,2),(11,18,1),
    (8,19,2),(9,19,1),(24,19,2),
    (9,20,2),(21,20,1),(15,20,1),(1,20,1);

# < - - 1 trigger - - >

drop trigger if exists t_klient_create;

delimiter ;;
create trigger t_klient_create after insert on klient
    for each row
    begin
    insert into log (czas, zdarzenie, komentarz) values (current_timestamp,concat('Do tabeli "klient" dodano wiersz o numerze (id): ',new.id),concat('Nowy klient zarejestrował się w księgrani: ',new.imie,' ',new.nazwisko));
    end;
;;
delimiter ;

# < - - 1 stored procedure - - >

drop procedure if exists `pilne_zamowienia`;

delimiter ;;
create procedure `pilne_zamowienia`()
    begin
        select * from zamowienie where data_wysylki is null
                                   and data_platnosci is not null
                                   and datediff(now(), data_zlozenia)>3;
    end;
;;
delimiter ;

# < - - jeden podwójny join - - >

# Autorzy poszczególnych książek
select ksiazka.*, a.* from ksiazka
    inner join k_a ka on ksiazka.id = ka.ksiazka_id
    inner join autor a on ka.autor_id = a.id;

# Tłumacze poszczególnych książek (wydań - z pominięciem danych dotyczących wydań)
select tlumacz.*, k.* from tlumacz
    inner join w_t wt on tlumacz.id = wt.tlumacz_id
    inner join wydanie w on wt.wydanie_id = w.id
    inner join ksiazka k on w.ksiazka_id = k.id;

# select zamowienie.id,data_zlozenia, tytul from zamowienie
#     inner join w_z wz on zamowienie.id = wz.zamowienie_id
#     inner join wydanie w on wz.wydanie_id = w.id
#     inner join ksiazka k on w.ksiazka_id = k.id;

# < - - 5 zapytań agregujących - - >

# Liczba klientów z poszczególnych miejscowości
select ak.miejscowosc, count(klient.id) from klient
    inner join adres_klient ak on klient.adres_id = ak.id
    group by miejscowosc;

# Łączna liczba zamówionych książek (wydań - egzemplarzy):
select sum(liczba_zamow) from w_z;

# Łączna liczba zamówionych książek (wydań - egzemplarzy) per zamówienie:
select zamowienie_id, sum(liczba_zamow)
    from w_z
    group by zamowienie_id;

# Łączna liczba zamówionych książek (wydań - egzemplarzy) per tytuł:
select tytul, count(tytul) from ksiazka
    inner join wydanie w on ksiazka.id = w.ksiazka_id
    inner join w_z wz on w.id = wz.wydanie_id
    inner join zamowienie z on wz.zamowienie_id = z.id
    group by tytul;

# Wartość (kwota do zapłaty) poszczególnych zamówień:
select zamowienie.id as `zamowienie id`,
       sum(w.cena * liczba_zamow) as `wartosc ksiazek`,
       sd.cena as `koszt dostawy`,
       sum(w.cena * liczba_zamow) + sd.cena as `lacznie do zaplaty` from zamowienie
    inner join w_z wz on zamowienie.id = wz.zamowienie_id
    inner join wydanie w on wz.wydanie_id = w.id
    inner join sposob_dostawy sd on zamowienie.sposob_dostawy_id = sd.id
    group by zamowienie.id;

# < - - 1 update, 1 delete, 1 insert - - >

update klient set potwierdzony=true where potwierdzony=false;

delete from w_t where tlumacz_id=1;
delete from tlumacz where id=1;

insert into ksiazka (tytul) values ('Inne pieśni');
set @m = (select max(id) from ksiazka);
set @a = (select id from autor where nazwisko='dukaj');
insert into k_a (ksiazka_id, autor_id) values (@m, @a);

# < - - zapytanie sprawdzające spójność danych w tablicach - - >

# Sprawdzenie, czy dane wprowadzone w kolumnie "kod_pocztowy" odpowiadają strukturze kodu pocztowego:
select kod_pocztowy from adres_klient where not kod_pocztowy rlike '^[0-9]\{2\}[-][0-9]\{3\}$';

# Sprawdzenie, czy data wysyłki, w przypadku zamówień, które powinny zostać opłacone z góry, jest późniejsza
# lub taka sama jak data opłacenia zamówienia:
select id, data_platnosci, data_wysylki, platnosc, if(data_wysylki >= data_platnosci, 'Prawidłowo', 'Błąd')
    from zamowienie
    where (platnosc='karta' or platnosc='przelew') and data_wysylki is not null;

# Sprawdzenie, czy są klienci, którzy nie złożyli żadnego zamówienia:
select klient.id, imie, nazwisko, z.id from klient
    left outer join zamowienie z on klient.id = z.klient_id
    where z.id is null;
