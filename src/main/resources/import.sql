INSERT INTO Allergen(id, name) VALUES (1,'Apio')
INSERT INTO Allergen(id, name) VALUES (2,'Cereales con gluten')
INSERT INTO Allergen(id, name) VALUES (3,'Crustaceo')
INSERT INTO Allergen(id, name) VALUES (4,'Huevo')
INSERT INTO Allergen(id, name) VALUES (5,'Pescado')
INSERT INTO Allergen(id, name) VALUES (6,'Altramuces')
INSERT INTO Allergen(id, name) VALUES (7,'Leche')
INSERT INTO Allergen(id, name) VALUES (8,'Moluscos')
INSERT INTO Allergen(id, name) VALUES (9,'Mostaza')
INSERT INTO Allergen(id, name) VALUES (10,'Frutos de cascara')
INSERT INTO Allergen(id, name) VALUES (11,'Cacahuetes')
INSERT INTO Allergen(id, name) VALUES (12,'Sesamo')
INSERT INTO Allergen(id, name) VALUES (13,'Soja')
INSERT INTO Allergen(id, name) VALUES (14,'Sulfitos')
/*DTYPE, ID, MAIL, NAME, PASS, ROLES, ADDRESS, CAPACITY, CIF, PHONE, AGE, BORN_DATE, KARMA*/
INSERT INTO PROFILE VALUES('User',1,'a@a.as', 'a', '$2a$06$xkp4ZnBqJ9UcbcB2h2M/zuA7R29AZjsrBk4DGQoJ3cOXVisReXbCC','USER',NULL,NULL,NULL,NULL,18,NULL,0.0E0)
INSERT INTO PROFILE VALUES('Restaurant',2,'r@r.rs','r','$2a$06$xkp4ZnBqJ9UcbcB2h2M/zuA7R29AZjsrBk4DGQoJ3cOXVisReXbCC','RESTAURANT',NULL,0,'12345678A','666666666',NULL,NULL,NULL)
INSERT INTO Profile VALUES ('User',3,'user1@ucm.es','user1','$2a$06$xkp4ZnBqJ9UcbcB2h2M/zuA7R29AZjsrBk4DGQoJ3cOXVisReXbCC','USER',NULL,NULL,NULL,NULL,18,NULL,0.0E0)
INSERT INTO Profile VALUES ('Admin',4,'admin@ucm.es','admin','$2a$06$xkp4ZnBqJ9UcbcB2h2M/zuA7R29AZjsrBk4DGQoJ3cOXVisReXbCC','ADMIN',NULL,NULL,NULL,NULL,18,NULL,0.0E0)
 

/* id, carbs, fats, kcal, name, prot, location-id*/

INSERT INTO Dish VALUES (1,247,119,516,'Macarrones napolitana',70,NULL )
INSERT INTO Dish VALUES (2,121,52,192,'Judias verdes de pueblo',19,NULL )
INSERT INTO Dish VALUES (3,20,120,186,'Ensalada variada',45,NULL )
INSERT INTO Dish VALUES (4,40,81,181,'Judias verdes salteadas',445,NULL )

INSERT INTO Dish VALUES (5,16,461,573,'Chuleta de cerdo riojana',96,NULL )
INSERT INTO Dish VALUES (6,66,318,533,'San Jacobo',149,NULL )
INSERT INTO Dish VALUES (7,0,251,364,'Tortilla de jamón york',114,NULL )
INSERT INTO Dish VALUES (8,9,173,340,'Marrajo a la plancha',158,NULL )
INSERT INTO DISH VALUES (9,10,5,1,'Pato laqueado',18,NULL )
INSERT INTO Dish VALUES (10,121,52,192,'Judias verdes de pueblo',19,NULL )

INSERT INTO ALLERGEN_DISHES VALUES(1,1)
INSERT INTO ALLERGEN_DISHES VALUES(8,1)
INSERT INTO ALLERGEN_DISHES VALUES(4,2)
INSERT INTO ALLERGEN_DISHES VALUES(1,2)
INSERT INTO ALLERGEN_DISHES VALUES(8,3)
INSERT INTO ALLERGEN_DISHES VALUES(4,4)
INSERT INTO ALLERGEN_DISHES VALUES(1,5)
INSERT INTO ALLERGEN_DISHES VALUES(8,6)
INSERT INTO ALLERGEN_DISHES VALUES(4,7)
INSERT INTO ALLERGEN_DISHES VALUES(1,8)
INSERT INTO ALLERGEN_DISHES VALUES(8,9)
INSERT INTO ALLERGEN_DISHES VALUES(4,10)

INSERT INTO Profile(id, name, mail, pass, roles, phone, address, capacity, menu, comments) VALUES (7, 'El Mejíbar', 'mejibar@gmail.com', '12345678', 'RESTAURANT', '915402233','Av. de Europa 54, Madrid ', 40, NULL, NULL)
INSERT INTO Profile(id, name, mail, pass, roles, phone, address, capacity, menu, comments) VALUES (8, 'Gandarío', 'gandario@gmail.com', '12345678', 'RESTAURANT', '915402233','Calle Gaztambide 28, Madrid', 30, NULL, NULL)
INSERT INTO Profile(id, name, mail, pass, roles, phone, address, capacity, menu, comments) VALUES (9, 'DiverXO', 'diverxo@gmail.com', '12345678', 'RESTAURANT', '915402233','Calle de Padre Damian 23 Madrid', 50, NULL, NULL)
