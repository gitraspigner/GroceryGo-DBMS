INSERT INTO EMPLOYEE VALUES 
(788985,'Cashier',17365.63,'Davita','Folgar',11,4),
(792497,'Cashier',3492.40,'Blakelee','Galarita',6,3),
(327210,'Stocker',27694.31,'Marcille','Medious',3,5),
(597258,'Cashier',28627.92,'Antonella','Garced',3,2),
(222304,'Stocker',20627.89,'Yvonne','Botwin',5,8),
(647030,'Bagger',16047.30,'Lanna','Annabel',3,3),
(641596,'Bagger',25622.10,'Carmelita','Korslund',10,9),
(140666,'Cashier',26851.04,'Carolyn','Fosser',5,6),
(155979,'Stocker',19864.56,'Janel','Chalaban',7,8),
(334544,'Stocker',25676.08,'Marci','Fruchey',12,8),
(533651,'Bagger',23066.72,'Loella','Cooch',4,8),
(867907,'Cashier',7649.25,'Alida','Brugal',3,1),
(278715,'Stocker',19889.41,'Pierrette','Kernodle',9,9),
(828222,'Cashier',28033.03,'Corabel','Bartula',6,4),
(671415,'Cashier',26994.25,'Bettye','Mezzinni',11,8),
(132863,'Bagger',5305.66,'Aida','Chown',3,6),
(652825,'Bagger',29213.10,'Alverta','Lawary',6,5),
(603473,'Stocker',15918.02,'Sarene','Flaminio',1,2),
(872756,'Cashier',26827.80,'Erinna','Hackborn',11,2),
(122159,'Stocker',6469.15,'Janetta','Forston',10,5)
;

INSERT INTO STORE VALUE 
	(111111,'Store12', '123 place AVE SW', 'Lincoln', 'NE'), 
	(124645,'Store54', '2342 way AVE NW', 'New York', 'NY'), 
	(175356,'Store65', '1443 place AVE SW', 'Chicago', 'IL'), 
	(162478,'Store92', '1123 street NW', 'Boise', 'ID'), 
	(937464,'Store10', '2543 place AVE SW', 'Akron', 'OH'), 
	(872123,'Store16', '1264 way AVE SW', 'SF','CA'),
	(231298,'Store28', '9696 place AVE NW', 'San Jose','CA'), 
	(384657,'Store33','1278 corner AVE W','San Diego','CA'), 
	(619374,'Store21','3172 street NW','Chicago','IL'), 
	(198321,'Store1','182 way AVE SE','Portland','OR'), 
	(231521,'Store23','27 street AVE NE','Portland','ME'), 
	(712412,'Store41','981 corner AVE SE','Portland','OR'),
	(363842,'Store64','743 place S','Boise','ID'),
	(119735,'Store29','12 southstreet','Spokane','WA'),
	(821340,'Store80','40 northeaststreet','Yakima','WA')
;

INSERT INTO DEPARTMENT VALUE 
	(4, 175356,'Produce', 2), 
	(2, 175356,'Frozen', 1), 
	(6, 937464,'Baked Goods', 3), 
	(9, 872123, 'Fruit', 2), 
	(3, 821340, 'Pharmacy', 5), 
	(1, 231521, 'Dairy', 2), 
	(5, 231298, 'Bakery', 6), 
	(7, 162478, 'Breakfast', 1), 
	(8, 712412, 'Drinks', 1), 
;

INSERT INTO REGISTER VALUE
(1,312.12),
	(2,322.12),
	(3,105.14),
	(4,214.21),
	(5,173.98),
	(6,349.81),
	(7,412.72),
	(8,921.32),
	(9,412.21),
	(10,381.09),
	(11,152.94),
	(12,273.01)
;

INSERT INTO INVENTORY VALUE
	(111111, 111111), 
	(111111, 513402), 
	(111111, 231456),
(124645, 635367),
(162478, 423456),
(821340, 920194),
(872123, 704927),
(1197354, 846148)
;

INSERT INTO SHIPMENT VALUE
(111111, 111111,  '2020-04-10', '2020-04-21',  231521),
	(193729, 132131,  '2020-10-07', '2020-10-11',  937464),
	(918462, 222111,  '2020-09-16', '2020-09-17',  175356),
(708413, 113121,  '2020-12-21', '2020-12-23',  872123),
(123703, 907511,  '2020-08-26', '2020-09-13',  162478),
(738926, 113121,  '2020-02-23', '2020-03-02',  124645)
;

INSERT INTO PRODUCT VALUE
	(111111, 'Produce', 99.99, 'Apple', 0, '2020-02-20', 111111), 
	(121212, 'Produce', 10.99, 'Banana', 0, '2020-03-20', 111111), 
	(131313, 'Produce', 13.99, 'Orange', 0, '2020-03-17', 231456),
	(111112, 'Produce', 8.99, 'Lettuce', 0, '2020-02-20', 111111), 
	(111113, 'Produce', 10.99, 'Cucumber', 0, '2020-02-25', 111111), 
	(111114, 'Produce', 8.99, 'Grapes', 0, '2020-03-27', 111111), 
	(111115, 'Produce', 6.99, 'Pineapple', 0, '2020-03-27', 111111),
(212121, 'Produce', 4.99, 'Peanuts', 0, '2020-04-30', 231456),
(444111, 'Produce', 11.99, 'Potatoes', 0, '2020-02-20', 635367),
(111222, 'Frozen', 8.99, 'John’s Pizza', 0, '2020-11-27', 513402),
(113311, 'Frozen', 5.99, 'Taro Ice Cream', 0, '2022-01-30', 846148),
(211112, 'Frozen', 9.99, 'Frozen Vegetables', 0, '2020-02-20', 920194)      
;

INSERT INTO SUPPLIER VALUE
	(111111, 'Supplier'), 
	(132131, 'Jack’s Farm'), 
	(222111, 'McD Farm'),
(113121, 'Organic Corp'),
(907511, 'Eugen Corp'),   
;

INSERT INTO SHIPMENT_CONTAINS VALUE
	(175356, 121212, 235325,2),
(384657,131313,193729,3),
(937464,212121,918462,4),
(872123,444111,708413,1),
(821340,111222,123703,5)
;

INSERT INTO MANAGES_DEPT VALUE
	(788985,4,111111,'2020-01-20'),
	(603473,2,111111,'2019-12-20'),
	(140666,6,162478,'2018-09-18'),
	(278715,9,619374,'2019-10-01')
;

INSERT INTO SUPERVISES VALUE
	(867907,788985),
	(867907,222304),
	(867907,533651),
	(122159,278715),
	(122159,872756)
;
