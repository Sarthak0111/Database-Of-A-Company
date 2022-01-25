#query 1
select * from product where price_per_unit > 10000;

#query 2
select * from order_ where address_id in(
	select address_id from address where state = 'Punjab'
);

#query 3
select * from user where dob = "1987-3-23";

#query4
select * from product where vendor_id in (
	select cust_id from user where first_name = 'Deepak'
);

#query5
select first_name, last_name from user where cust_id in (
	select cust_id from order_ where cancellation_date is not null
);

#query6 select product name where quantity is >=3  in order item
select product_name from product where product_id in (
	select product_id from order_item where quantity >= 3
);

#query7
select first_name, last_name from user where gender='M';

#query8 How many payment done via visa card
select count(order_id) from order_ where payment_id in (
	select payment_id from payment where ac_type = 'Visa'
);

#query9 - Total payment done via visa card
select sum(price_per_unit) from product where product_id in (
	select product_id from order_item where order_id in (
		select order_id from order_ where payment_id in (
			select payment_id from payment where ac_type = 'Visa'
        )
    )
);

#join table order and order item on basis of order_id where customer is 1001
-- select * from
-- order_item as oI inner join (select * from order_ where cust_id = 1001) as o on oI.order_id = o.order_id;

#query10 checking which porduct user 1001 have bought.
select o.cust_id, oI.order_id, p.product_id, p.product_name from
order_item as oI inner join (select * from order_ where cust_id = 1001) as o on oI.order_id = o.order_id
inner join product as p on oI.product_id = p.product_id;

#query11 total money spended by user 1001
select sum(oI.quantity*p.price_per_unit) from
order_item as oI inner join (select * from order_ where cust_id = 1001) as o on oI.order_id = o.order_id
inner join product as p on oI.product_id = p.product_id;

#query 12
select product_name from product where manufacturing_date >= '2020-01-04';

#query 13 
select * from address where pin_code = '147001';
