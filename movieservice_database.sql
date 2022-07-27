create table movie
(
    id               int auto_increment primary key,
    title            varchar(255)                                          not null,
    originaltitle    varchar(255),
    genre            enum ('comedy','thriller','action','musical','drama') not null,
    yearofproduction year(4)
);

insert into movie
    (title, originaltitle, genre, yearofproduction)
values ('Skazani na Shawshank', 'The Shawshank Redemption', 'drama', 1994),
       ('Ojciec chrzestny', 'The Godfather', 'drama', 1972),
       ('Dwunastu gniewnych ludzi', '12 Angry Men', 'drama', 1957),
       ('Podziemny krąg', 'Fight Club', 'drama', 1999),
       ('Milczenie owiec', 'The Silence of the Lambs', 'thriller', 1991),
       ('Życie jest piękne', 'La vita è bella', 'drama', 1997),
       ('Terminator 2: Dzień Sądu', 'Terminator 2: Judgment Day', 'action', 1991),
       ('Obywatel Kane', 'Citizen Kane', 'drama', 1941),
       ('Memento', null, 'thriller', 2000),
       ('Psychoza', 'Psycho', 'thriller', 1960);

alter table movie
    add is_available boolean not null
        default false;

alter table movie
    drop column is_available;

select *
from movie;