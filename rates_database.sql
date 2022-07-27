create table rate
(
    id             int auto_increment primary key,
    no             varchar(13) not null,
    effective_date varchar(10) not null,
    mid            double      not null
);

create table currency
(
    id       int auto_increment primary key,
    table    varchar(1)   not null,
    currency varchar(255) not null,
    code     varchar(3)   not null
);

create table query
(
    id         bigint auto_increment primary key,
    material   varchar(255) not null,
    code       varchar(3)   not null,
    start_date varchar(10)  not null,
    end_date   varchar(10)  not null,
    mid        double       not null,
    timestamp  timestamp    not null
);

create table users
(
    id      int auto_increment primary key,
    name    varchar(255) not null,
    surname varchar(255) not null,
    email   varchar(255) not null,
    pass    varchar(255) not null
);

create table bookings
(
    id         int auto_increment primary key,
    id_user    int         not null,
    date_start varchar(10) not null,
    date_end   varchar(10) not null,
    rooms_no   int         not null
);

create table rooms
(
    id         int auto_increment primary key,
    id_booking int not null,
    persons_no int not null,
    smoking    boolean
);

insert into bookings (id_user, date_start, date_end, rooms_no) values (12, '2023-06-21', '2023-06-23', 2);
insert into rooms (id_booking, persons_no, smoking) values (1, 3, false);
insert into rooms (id_booking, persons_no, smoking) values (1, 4, true);

DELETE FROM rooms WHERE id>1;
ALTER TABLE rooms AUTO_INCREMENT = 1
