drop database IF EXISTS sqlclass_db;
create database sqlclass_db;

use sqlclass_db;

create table world (country varchar(30),
continent varchar(30),
area int,
population int,
captital varchar(30),
top_level_domai varchar(3));

select * from world;

insert into world values("Afghanistan", "Asia", 652230, 25500100, "Kabul", ".af"
);

insert into world values
("Algeria", "Africa", 2381741, 38700000, "Algiers", ".dz"),
("New Zealand", "Oceania", 270467, 4538520, "Wellington", ".nz"),
("Australia", "Oceania", 7692024, 23545500, "Canberra",".au"),
("Brazil", "South America", 8515767, 202794000, "Brasilia", ".br"),
("China", "Asia", 9596961, 1365370000, "Beijing", ".cn"),
("India", "Asia", 3166414, 1246160000, "New Delhi",".in");

insert into world values
("Russia", "Eurasia", 17125242, 146000000, "Moscow", ".ru"),
("France", "Europe", 640679, 65906000, "Paris", ".fr"),
("Germany","Europe", 357114, 80716000, "Berlin", ".de"),
("Denmark", "Europe", 43094, 5634437, "Copenhagen", ".dk"),
("Norway","Europe", 323802, 5124383, "Oslo", ".no");

insert into world values
("Sweden","Europe", 450295, 9675885, "Stockholm", ".se"),
("South Korea", "Asia", 100210, 50423955, "Seoul", ".kr"),
("Canada North", "America", 9984670, 35427524, "Ottawa", ".ca");

insert into world values
("United States", "North America", 9826675, 318320000, "Washington, D.C", ".us"),
("Armenia", "Eurasia", 29743, 3017400, "Yerevan", ".am");

#전체 테이블 출력 
select * from world;

#유럽 국가의 country, capital, top_level_domain 컬럼만 출력
select country, captital, top_level_domai from world where continent = "Europe";

-- 3) 아시아 국가들의 인구수 내림 차순으로 country, population 컬럼을 출력
select country, population from world where continent = "Asia" order by population desc;

-- 4) 전체 국가의 국가명(country), 대륙(continent), 면적(area) 컬럼을 출력하는데 면적의
-- 내림차순으로 정렬하여 출력

select country, Continent, area from world order by area desc;

-- 5) 전체 국가의 국가명, 도메인이름을 출력 (도메인 이름을 오름차순으로 정렬하여 출력)
select country,  top_level_domai from world order by top_level_domai;