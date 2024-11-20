--Cities by their total host
select city,count(host_id) total_host
from AB_US_2020_final
group by city
order by total_host desc;


--Room type by thair price
select room_type, avg(price) average_price
from AB_US_2020_final
group by room_type;


--valuable host_ids
select top 10 host_id,sum(price) total_spend
from AB_US_2020_final
group by host_id
order by total_spend desc;


--Most busy rooms
select name
from AB_US_2020_final
where availability_365=0;


--cities with avg price have to spend
select city, avg(price) average_price
from AB_US_2020_final
group by city;


--hosts favourite room_type
select room_type, avg(number_of_reviews) average_reviews
from AB_US_2020_final
group by room_type;


--Best in average cost
select name, price
from AB_US_2020_final
where price=(
select avg(price)
from AB_US_2020_final);


-- Best in city 
select city,max(name) name, avg(number_of_reviews) average_review
from AB_US_2020_final
group by city
order by average_review desc;


-- Busy room type
select room_type, avg(availability_365) average_availability, count(host_id) total_host
from AB_US_2020_final
group by room_type
order by average_availability;


--Best neighbourhoods by avg price
select top 20 neighbourhood,avg(number_of_reviews) average_review,avg(price) average_price
from AB_US_2020_final
group by neighbourhood 
order by average_review desc;







select * from AB_US_2020_final;