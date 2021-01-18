insert all
into color (color_id, name) values (1, 'White')
into color (color_id, name) values (2, 'Red')
into color (color_id, name) values (3, 'Blue')
select * from dual;

insert all
into mark (mark_id, name) values(1, 'Opel')
into mark (mark_id, name) values(2, 'Mazda')
into mark (mark_id, name) values(3, 'Chrysler')
select * from dual;

insert all
into country (country_id, name) values (1, 'Poland')
into country (country_id, name) values (2, 'USA')
into country (country_id, name) values (3, 'Brasil')
select * from dual;

insert all
into city (city_id, name, country_id) values (1, 'Lublin', 1)
into city (city_id, name, country_id) values (2, 'Wroclaw', 1)
into city (city_id, name, country_id) values (3, 'Warsaw', 1)
select * from dual;

insert all
into address (address_id, post_code, street, house_number, city_id) values
(1, '20-400', 'Narutowicza', '9a', 1)
into address (address_id, post_code, street, house_number, city_id) values
(2, '20-400', 'Nadbystrzycka', '31b', 1)
into address (address_id, post_code, street, house_number, flat_number, city_id) values
(3, '20-400', 'Gleboka', '38', '7', 1)
into address (address_id, post_code, street, house_number, city_id) values
(4, '20-400', 'Nadbystrzycka', '3a', 1)
into address (address_id, post_code, street, house_number, city_id) values
(5, '20-400', 'Lipowa', '2', 1)
into address (address_id, post_code, street, house_number, flat_number, city_id) values
(6, '20-400', 'Unicka', '37', '43', 1)
select * from dual;

insert all
into blabla_user (blabla_user_id, login, hashed_password, salt, email, firstname, surname,
date_of_birth, phone_number, address_id) values
(1, 'theBigJoJo', 'sdasdadasdad2342343fe23ef32ef32', 'asdfrffdfgsf6sd78fsdf58sdf5sfss', 'example1@mail.me', 'Mazikeen', 'Smith',
DATE '2020-11-11', '333333333', 1)
into blabla_user (blabla_user_id, login, hashed_password, salt, email, firstname, surname,
date_of_birth, phone_number, address_id) values
(2, 'bigBob', 'sdasdadasdad2342343fe23ef32ef32', 'asdfrffdfgsf6sd78fsdf58sdf5sfss', 'example2@mail.me', 'Lucifer', 'Morningstar',
DATE '2020-11-11', '333333333', 2)
into blabla_user (blabla_user_id, login, hashed_password, salt, email, firstname, surname,
date_of_birth, phone_number, address_id) values
(3, 'supathrupa', 'sdasdadasdad2342343fe23ef32ef32', 'asdfrffdfgsf6sd78fsdf58sdf5sfss', 'example3@mail.me', 'Ella', 'Lopez',
DATE '2020-11-11', '333333333', 3)
select * from dual;

insert all
into car (car_id, reg_number, prod_year, seats_count, blabla_user_id, mark_id, color_id) values
(1, 'we343f3', '2013', 5, 1, 1, 1)
select * from dual;

insert all
into post_status (post_status_id, name) values (1, 'Available')
into post_status (post_status_id, name) values (2, 'Unavailable')
into post_status (post_status_id, name) values (3, 'Reserved')
select * from dual;

insert into post (post_id, departure_datetime, arrival_datetime, seats_free_count, seat_price,
post_status_id, departure_address_id, arrival_address_id, car_id) values
(1, timestamp '2020-11-11 8:00:00', timestamp '2020-11-11 20:00:00', 4, 20,
1, 1, 2, 1);

insert all
into payment_method (payment_method_id, name) values (1, 'Card')
into payment_method (payment_method_id, name) values (2, 'Blik')
into payment_method (payment_method_id, name) values (3, 'Bank transfer')
select * from dual;

insert all
into payment_status (payment_status_id, name) values (1, 'Finished')
into payment_status (payment_status_id, name) values (2, 'Cancelled')
into payment_status (payment_status_id, name) values (3, 'In progress')
select * from dual;
