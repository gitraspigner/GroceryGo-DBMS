INSERT INTO STORE VALUE 
	-- Contstraint tests
	(NULL, 'Fake', 'Fake Address', 'City', 'XX'), 
	(111111, NULL, 'Fake Address', 'City', 'XX'), 
	(111111, 'Fake', NULL, 'City', 'XX'), 
	(111111, 'Fake', 'Fake Address', NULL, 'XX'), 
	(111111, 'Fake', 'Fake Address', 'City', NULL),
	(111111, 'Fake', 'Fake Address', 'City', 'XYZ')
	(111111, 'Fake', 'Fake Address', 'City', 'XX')
	(111111, 'Fake', 'Fake Address', 'City', 'XX')
	-- End of constraint tests
;

INSERT INTO DEPARTMENT VALUE 
	-- Contstraint tests
	(NULL, 175356,'Fake', 0), 
	(1, NULL,'Fake', 0), 
	(1, 175356, NULL, 0),
	(1, -111111, 'Fake', 0),
	(1, 175356, '01234567890', 0),
	(1, 175356, 'FakeDept', 0),
	(1, 175356, 'FakeDept', 0),
	-- End of constraint tests
;

INSERT INTO REGISTER VALUE
	-- Contstraint tests
	(NULL, 10.0), 
	(1, -10.00), 
	(1, 1.00), 
	(1, 1.00)
	-- End of constraint tests
;

INSERT INTO EMPLOYEE VALUES 
	-- Contstraint tests
	(NULL, 'Cashier', 12345.67, 'Fake', 'Employee', 1, 1), 
	(123456, NULL, 12345.67, 'Fake', 'Employee', 1, 1), 
	(123456, 'Cashier', NULL, 'Fake', 'Employee', 1, 1), 
	(123456, 'Cashier', 12345.67, NULL, 'Employee', 1, 1), 
	(123456, 'Cashier', 12345.67, 'Fake', NULL, 1, 1), 
	(123456, 'Cashier', 12345.67, 'Fake', 'Employee', 1, NULL), 
	(123456, 'Cashier', 12345.67, 'Fake', 'Employee', 20, 1), 
	(123456, 'Cashier', 12345.67, 'Fake', 'Employee', 1, 20), 
	(123456, 'Cashier', 12345.67, 'Fake1', 'Employee1', 1, 2),
	(123456, 'Cashier', 22222.22, 'Fake2', 'Employee2', 1, 2),
	(123456, 'Cashier', 100001.67, 'Fake', 'Employee', 1, 1), 
	(123456, 'Cashier', -12345.67, 'Fake', 'Employee', 1, 1)
	-- End of constraint tests
;

INSERT INTO INVENTORY VALUE
	-- Contstraint tests
	(NULL, 123456), 
	(111111, NULL), 
	(-111111, 123456), 
	(111111, 123456), 
	(111111, 123456)
	-- End of constraint tests
;

INSERT INTO SUPPLIER VALUE
	-- Contstraint tests
	(NULL, 'Fake Sup'), 
	(123456, 'Fake Sup'),
	(123456, 'Fake Sup2')
	-- End of constraint tests
;

INSERT INTO SHIPMENT VALUE
	-- Contstraint tests
	(NULL, 111111, '2020-02-20', '2020-02-21', 111111), 
	(123456, 111111, '2020-02-20', '2020-02-21', NULL), 
	(123456, 111111, '2020-02-22', '2020-02-21', 111111), 
	(123456, 111111, '2020-02-20', '2020-02-21', 131313), 
	(123456, 111111, '2020-02-20', '2020-02-30', 111111), 
	(235325, 111111,  '2020-04-10', '2020-04-21',  231521), 	
	(235325, 111111,  '2020-04-10', '2020-04-21',  231521) 
	-- End of constraint tests
;

INSERT INTO PRODUCT VALUE
	-- Contstraint tests
	(NULL, 'Produce', 99.99, 'Apple', 0, '2020-02-20', 999999), 
	(123456, 'Produce', NULL, 'Apple', 0, '2020-02-20', 999999), 
	(123456, 'Produce', 99.99, 'Apple', 0, '2020-02-20', NULL), 
	(123456, 'Produce', 99.99, 'Apple', 0, '2020-02-20', -829437), 
	(123456, 'Produce', 99.99, 'Apple', -1, '2020-02-20', 829437),
	(123456, 'Produce', 99.99, 'Apple', 1, '2020-02-20', 829437),
	(123456, 'Produce', 99.99, 'Apple', 1, '2020-02-20', 829437)
	-- End of constraint tests
;

INSERT INTO SHIPMENT_CONTAINS VALUE
	-- Contstraint tests
	(NULL, 111111, 111111, 1), 
	(111111, NULL, 111111, 1), 
	(111111, 111111, NULL, 1), 
	
	(2, 111111, 111111, 1), 
	(111111, 2, 111111, 1), 
	(111111, 111111, 2, 1), 

	(111111, 111111, 111111, 1), 
	(111111, 111111, 111111, 2)
	-- End of constraint tests
;

INSERT INTO MANAGES_DEPT VALUE
	-- Contstraint tests
	(NULL, 1, 111111, '2020-02-20'), 
	(123456, NULL, 111111, '2020-02-20'), 
	(123456, 1, NULL, '2020-02-20'), 
	(123456, 1, 111111, NULL), 
	(9, 1, 111111, '2020-02-20'), 	     -- invalid emp id
	(123456, 22, 111111, '2020-02-20'),  -- invalid dpt id
	(123456, 1, 9, '2020-02-20'),        -- invalid sup id
	(123456, 1, 123456, '2020-02-20'), 
	(123456, 1, 123456, '2020-02-21')
	-- End of constraint tests
;

INSERT INTO SUPERVISES VALUE
	-- Contstraint tests
	(NULL, 123456), 
	(123456, NULL), 
	(-1, 111111), 
	(111111, -1),  
	(123456, 111111), 
	(123456, 111111)
	-- End of constraint tests
;


