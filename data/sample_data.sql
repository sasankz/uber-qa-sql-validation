INSERT INTO drivers VALUES
(1,'Rahul','Hyderabad','2022-01-01',4.8),
(2,'Amit','Hyderabad','2023-02-01',4.7),
(3,'Sneha','Bangalore','2021-05-12',4.9),
(4,'Karan','Bangalore','2022-08-18',4.5),
(5,'Vikram','Delhi','2020-09-20',4.6);

INSERT INTO riders VALUES
(1,'Ananya','2023-01-10','Hyderabad'),
(2,'Rohit','2023-03-05','Hyderabad'),
(3,'Megha','2022-11-11','Bangalore'),
(4,'Arjun','2023-04-21','Bangalore'),
(5,'Neha','2023-06-15','Delhi');

INSERT INTO rides VALUES
(1,1,1,'2024-05-01 09:30','A','B',5.2,120,'completed','UPI'),
(2,2,2,'2024-05-01 10:10','C','D',3.5,90,'completed','Card'),
(3,3,3,'2024-05-01 19:20','E','F',7.1,180,'completed','Cash'),
(4,4,4,'2024-05-02 21:10','G','H',4.3,110,'cancelled_by_rider','UPI'),
(5,1,2,'2024-05-03 18:00','A','C',6.2,150,'completed','Card'),
(6,2,3,'2024-05-03 20:10','D','E',8.5,220,'completed','UPI'),
(7,3,4,'2024-05-04 17:30','F','G',3.9,95,'completed','Cash'),
(8,4,5,'2024-05-04 22:10','H','I',9.1,250,'cancelled_by_driver','UPI'),
(9,5,1,'2024-05-05 08:20','J','K',4.8,115,'completed','Card'),
(10,2,5,'2024-05-05 19:45','D','L',6.7,175,'completed','UPI');