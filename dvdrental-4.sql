--Merhabalar,
--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

--film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
select distinct replacement_cost from film order by replacement_cost;
--film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
select count(distinct replacement_cost) from film;
--film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
select count(title) from film where title like 'T%' and rating = 'G';
--country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
select count(country) from country where length(country) = 5;
--city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?
select count(city) from city where city ilike '%r';
--Kolay Gelsin.