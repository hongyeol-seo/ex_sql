use testdb;


-- CREATE TABLE person
-- (person_id SMALLINT UNSIGNED,
-- fname VARCHAR(20),
-- lname VARCHAR(20),
-- eye_color ENUM('BR','BL','GR'),
-- birth_date DATE,
-- street VARCHAR(30),
-- city VARCHAR(20),
-- state VARCHAR(20),
-- country VARCHAR(20),
-- postal_code VARCHAR(20),
-- CONSTRAINT pk_person PRIMARY KEY (person_id)
-- );

-- create table favorite_food
-- (person_id smallint unsigned,
-- food VARCHAR(20),
-- constraint pk_favorite_food primary key (person_id, food),
-- constraint fk_fav_food_person_id foreign key (person_id)
-- references person(person_id)
-- );

/*

set foreign_key_checks=0; # 제약 조건 비활성화
alter table person modify person_id smallint unsigned auto_increment;
set foreign_key_checks=1; # 제약 조건 활성화
*/


insert into person
(person_id, fname, lname, eye_color, birth_date)
values (null, 'William', 'Turner', 'BR', '1972-05-27');


select * from person;

insert into person (person_id, fname, lname, eye_color, birth_date)
values (null,"seo","hong","BR","1992-04-13");

-- insert into person values (null,"seo","hong","BR","1992-04-13");

insert into person values (null,"seo","hong","BR","1992-04-13",null,null,null,null,null);

select * from person where fname="seo";


-- insert into favorite_food (person_id, food) values (1, 'pizza’);
-- 
select * from favorite_food;

insert into favorite_food (person_id, food) values(1,"kakao2");
-- insert into favorite_food (person_id,food) values(1,'piay');

insert into person
(person_id, fname, lname, eye_color, birth_date,
street, city, state, country, postal_code)
values (null, 'Susan', 'Smith', 'BL', '1975-11-02',
'23 Maple St.', 'Arlington', 'VA', 'USA', '20220');


update person
set street = "1225 Tremon St.",
city = "Boston",
state = "MA",
country = "USA",
postal_code = "02138"
where person_id=1;


select * from person;

update person set lname ="napolehong" where fname = "seo";

delete from person where lname='Smith' ;
select * from person;


insert into favorite_food (person_id, food) values (3, 'lasagna');

select * from favorite_food;

-- insert into favorite_food (person_id, food) values (4, 'lasagna');


-- update person set birth_date = 'DEC-21-1980＇ where person_id=1;

update person set birth_date = str_to_date('DEC-21-1980', '%b-%d-%Y') where person_id=1;

select * from person;
update person set birth_date = str_to_date('DEC-29-2021', '%b-%d-%Y') where fname = "seo";


select * from person order by person_id desc; #내림차순
