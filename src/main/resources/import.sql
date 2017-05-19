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

INSERT INTO Profile(id, name, mail, pass, roles) VALUES (1,'user1','user1@ucm.es','1234','USER')

INSERT INTO Profile(id, name, mail, pass, roles) VALUES (2,'admin1','admin1@ucm.es','1234','ADMIN')



INSERT INTO Profile(id, name, mail, pass, roles, phone, address, capacity, menu, comments) VALUES (3, 'La Trapella', 'latrapella@restmail.com', '12345678', 'RESTAURANT', '913003033', 'c/ Sanchez Pacheco 22, Pozuelo de Alarcón, Madrid', 58, NULL, NULL)

/*

INSERT INTO Dish (id, location, name, kcal, prot, fats, carbs) VALUES (1, 'location.id', 'Macarrones napolitana', 516, 70, 119, 247, )
INSERT INTO Dish (id, location, name, kcal, prot, fats, carbs) VALUES (NULL, 'location.id', 'Judias verdes de pueblo', 192, 19, 52, 121, )
INSERT INTO Dish (id, location, name, kcal, prot, fats, carbs) VALUES (NULL, 'location.id', 'Ensalada variada', 186, 45, 120, 20, )
INSERT INTO Dish (id, location, name, kcal, prot, fats, carbs) VALUES (NULL, 'location.id', 'Judias verdes salteadas', 181, 445, 81, 40, )
INSERT INTO Dish (id, location, name, kcal, prot, fats, carbs) VALUES (NULL, 'location.id', 'Chuleta de cerdo riojana', 573, 96, 461, 16, )
INSERT INTO Dish (id, location, name, kcal, prot, fats, carbs) VALUES (NULL, 'location.id', 'San Jacobo', 533, 149, 318, 66, )
INSERT INTO Dish (id, location, name, kcal, prot, fats, carbs) VALUES (NULL, 'location.id', 'Tortilla de jamón york', 364, 114, 251, 0, )
INSERT INTO Dish (id, location, name, kcal, prot, fats, carbs) VALUES (NULL, 'location.id', 'Marrajo a la plancha', 340, 158, 173, 9, )
INSERT INTO Dish (id, location, name, kcal, prot, fats, carbs) VALUES (NULL, 'location.id', 'Judias verdes de pueblo', 192, 19, 52, 121, )

INSERT INTO Profile(id, name, mail, pass, roles, phone, address, capacity, menu, comments) VALUES (3, 'El Mejíbar', 'mejibar@gmail.com', '12345678', 'RESTAURANT', '915402233','Av. de Europa 54, Madrid ', 40, NULL, NULL)

*/
