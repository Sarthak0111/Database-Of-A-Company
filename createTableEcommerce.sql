drop schema if exists ecommerce;
create schema ecommerce;
use ecommerce;

create table user(
	cust_id int primary key,
    first_name varchar(50) not null, /* can't be null*/
    last_name varchar(50) not null,
    dob date not null,
    gender varchar(1) not null,
    primary_address int, /*these are forgein keys*/
    primary_email int,
    primary_payment int
);
    
create table phone (
	phone_id int primary key,
    cust_id int not null,
    country_code int not null,
    area_code int not null,
    phone_number int not null,
    foreign key(cust_id) references user(cust_id) on delete cascade
);


create table email(
	email_id int primary key,
    cust_id int not null,
    email varchar(254) not null,
    email_type varchar(10) not null,
    foreign key(cust_id) references user(cust_id) on delete cascade
);

alter table user
add foreign key(primary_email)
references email(email_id)
on delete cascade;


create table payment(
	payment_id int primary key,
    cust_id int not null,
    ac_number varchar(16) not null,
    ac_type varchar(20) not null,
    ac_exp_month int not null,
    ac_exp_year int not null,
    primary_payment boolean not null default false,
    foreign key(cust_id) references user(cust_id) on delete cascade
);

alter table user 
add foreign key(primary_payment)
references payment(payment_id)
on delete cascade;

create table address(
	address_id int primary key,
    cust_id int not null,
    address varchar(100) not null,
    city varchar(50) not null,
    state varchar(50) not null,
    pin_code int not null,
    country varchar(50) not null,
    primary_address boolean not null default false,
    foreign key(cust_id) references user(cust_id) on delete cascade
);

alter table user 
add foreign key(primary_address)
references address(address_id)
on delete cascade;


create table order_(
	order_id int primary key,
    cust_id int not null,
    payment_id int not null,
    payment_date date,
    order_date date not null,
    ship_date date,
    address_id int,
    cancellation_date date,
    return_date date,
    foreign key(address_id) references address(address_id),
    foreign key(cust_id) references user(cust_id) on delete cascade,
    foreign key(payment_id) references payment(payment_id) on delete cascade
);
    
create table order_item(
    order_id int not null,
    product_id int not null,
    quantity int,
    foreign key(order_id) references order_(order_id) on delete cascade
);


create table product(
	product_id int primary key,
    product_name varchar(50) not null,
    vendor_id int not null,
    manufacturing_date date,
    manufacturer_id varchar(100) not null,
    price_per_unit int,
    foreign key(vendor_id) references user(cust_id) on delete cascade
);


alter table order_item
add foreign key(product_id)
references product(product_id)
on delete cascade;

