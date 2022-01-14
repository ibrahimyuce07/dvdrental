--Bu çalışmamamızda şimdiye kadar üzerine konuştuğumuz tüm konuları 5 farklı senaryo üzerinden tekrar etmeye çalıştık. Aşağıda ilgili senaryoları bulabilirsiniz.
--film tablosundan 'K' karakteri ile başlayan en uzun ve replacenet_cost u en düşük 4 filmi sıralayınız.
select * from film where title like 'K%' and replacement_cost = (select min(replacement_cost) from film where title like 'K%') order by length desc limit 4;
--film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?
select rating, count(*) from film group by rating order by count(*) desc limit 1;
--customer tablosunda en çok alışveriş yapan müşterinin adı nedir?
select first_name from customer where customer_id = (select customer_id from rental where rental_date = (select max(rental_date) from rental where customer_id = customer.customer_id) and return_date is null);
--category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.
select category.name, count(*) from category, film_category where category.category_id = film_category.category_id group by category.name order by count(*) desc;
--film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kç tane film vardır?
select count(*) from film where title ilike '%e%e%e%e%';
