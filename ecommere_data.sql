USE ecommerce;
INSERT INTO user VALUES (1001,'Anita','Sharma','1986-11-23','F',NULL,NULL,NULL),		
(1002,'John','Abraham','1987-3-23','M',NULL,NULL,NULL),
(1003,'Deepak','Kumar','1991-10-6','M',NULL,NULL,NULL),
(1004,'Aditya','Garg','1989-8-16','M',NULL,NULL,NULL),
(1005,'Anshul','Grover','1996-8-19','M',NULL,NULL,NULL);


COMMIT;

INSERT INTO phone VALUES (10001,1001,1,531,2836774),
(10002,1001,1,531,7705843),
(10003,1001,1,531,7708465),
(10004,1002,1,203,7796292),
(10005,1003,1,971,6526066);


COMMIT;


INSERT INTO email VALUES (10001,1001,'annita4@gmail.com','Personal'),
(10002,	1001,'jhonny@macrosoft.com','Work'),
(10003,	1002,'d.k111@hotmail.com','Personal'),
(10004,	1002,'ady123@urw.edu','School'),
(10005,	1003,'groverbhai@yahoo.com','Personal');

COMMIT; 

UPDATE user
SET primary_email = 10001
WHERE cust_id = 1001;

UPDATE user
SET primary_email = 10003
WHERE cust_id = 1002;

UPDATE user
SET primary_email = 10005
WHERE cust_id = 1003;


COMMIT;

INSERT INTO payment VALUES 
(100001,1001,'368544623795203','AmEx',11,2022, TRUE),
(100002,1002,'4937515149549500','Visa',9,2024, TRUE),
(100003,1003,'4808437630180081','Rupay',1,2023, TRUE),
(100004,1004,'4828526348154572','Visa',4,2023, TRUE),
(100005,1005,'4248168108403535','Visa',12,2020, TRUE);

COMMIT;

UPDATE user
SET primary_payment = 100001
WHERE cust_id = 1001;

UPDATE user
SET primary_payment = 100002
WHERE cust_id = 1002;

UPDATE user
SET primary_payment = 100003
WHERE cust_id = 1003;

UPDATE user
SET primary_payment = 100004
WHERE cust_id = 1004;

UPDATE user
SET primary_payment = 100005
WHERE cust_id = 1005;
COMMIT;

# address
INSERT INTO address VALUES
(1001,1001,'Prayag Tirth, Veer Savarkar Marg, Naupada-thane West,Thane','Thane','Maharashtra',400602,'India',TRUE),
(1002,1001,'Near Raj Talkies7, Jinsi Square Jahangirabad','Bhopal','Madhya Pradesh',462001,'India',FALSE),
(1003,1002,'Pakhowal Rd, Vikas Nagar, Shaheed Bhagat Singh Nagar','Ludhiana','Punjab',141003,'India',TRUE),
(1004,1003,'Shastri Market Road, 22c, Sector 22, Chandigarh','Chandigarh','Punjab',160022,'India',TRUE),
(1005,1004,'Shop No. 12, AC market, Adalat Bazar, Patiala','Patiala','Punjab',147001,'India',TRUE);


COMMIT;

UPDATE user
SET primary_address = 1001
WHERE cust_id = 1001;

UPDATE user
SET primary_address = 1002
WHERE cust_id = 1003;

UPDATE user
SET primary_address = 1003
WHERE cust_id = 1004;

UPDATE user
SET primary_address = 1004
WHERE cust_id = 1005;

UPDATE user
SET primary_address = 1005
WHERE cust_id = 1006;
COMMIT;

INSERT INTO order_ VALUES 
(1000001,1001,100001,'2019-12-20','2019-12-20','2019-12-20',1001,NULL,NULL),
(1000002,1001,100002,'2020-2-1','2020-2-1','2020-2-1',1002,'2020-3-4','2020-3-8'),
(1000003,1001,100003,'2020-3-1','2020-3-1','2020-3-1',1003,NULL, NULL),		
(1000004,1002,100004,'2019-4-1','2019-4-1','2019-4-1',1004,NULL,NULL),		
(1000005,1003,100005,'2019-5-7','2019-5-7','2019-5-7',1005,NULL,NULL);	

COMMIT;

INSERT INTO product VALUES 
(10000000,'Desktop computer',1001,'2019-5-7','Dell',50000),
(10000001,'Laptop Computer',1001,'2019-4-1','Dell',45000),
(10000002,'Laptop Computer',1002,'2020-3-1','Apple',120000),
(10000003,'Laptop Computer',1003,'2019-12-20','Acer',90000),
(10000004,'Laptop Computer',1004,'2019-12-20','Lenovo',8000),
(10000005,'Shirt',1002,'2020-2-1','Tommy Hilfiger',2000),
(10000006,'Jacket',1003,'2020-3-1','Puma',5000),
(10000007,'Shoes',1004,'2019-12-20','Nike',10000),
(10000008,'Bracelets',1005,'2020-2-1','BVLGARI',100000),
(10000009,'Washing Machine',1004,'2020-3-1','LG',35000),
(10000010,'LED TV',1005,'2020-2-1','Sony',32000);

COMMIT;

INSERT into order_item values
(1000001,10000000,5),
(1000001,10000005,2),
(1000001,10000006,1),
(1000002,10000001,3),
(1000002,10000003,4),
(1000002,10000007,8),
(1000003,10000008,1),
(1000003,10000004,7),
(1000004,10000001,3),
(1000004,10000003,4),
(1000004,10000007,8),
(1000005,10000008,1),
(1000005,10000004,7);