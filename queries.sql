select c.fname as first_name, c.lname as last_name,c.gender as gender,c.age as age,c.cust_email as email_id,t.ticket_id as ticket_id,t.date_flight as departure_date,t.time_depart as departure_time,t.destination as city_to,t.departure as city_from,f.flight_id as flight_number from customer c inner join flight as f on c.cust_id=f.cust_id inner join ticket as t on f.ticket_id=t.ticket_id;

select distinct(f.flight_id),t.date_flight as departure_date,t.time_depart as departure_time,t.destination as city_to,t.departure as city_from from flight f inner join ticket as t on f.ticket_id=t.ticket_id;

select f.flight_id,sum(t.price) from flight f,ticket t where f.ticket_id=t.ticket_id group by f.flight_id;
