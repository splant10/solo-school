INSERT INTO people VALUES('111111111', 'Harry Simmons', 6, 150, 'blue', 'brown', '2020 River Bend, Edmonton', 'm', '21-AUG-1985');
INSERT INTO people VALUES('123456789', 'Sally Simmons', 5, 130, 'green', 'brown', '2020 River Bend, Edmonton', 'f', '20-APR-1986');
INSERT INTO people VALUES('456238456', 'Alexander Brown', 6.5, 165, 'blue', 'blonde', '96 Evergreen Rd, Vegerville', 'm', '10-MAR-1995');
INSERT INTO people VALUES('658945213', 'Randy MacMillan', 4.2, 130, 'blue', 'brown', '4563 Vermilion St, Banff', 'm', '19-DEC-1994');
INSERT INTO people VALUES('666452111', 'Zoe Carlson', 5.3, 111, 'hazel', 'brown', '12928 64 St, Calgary', 'f', '4-NOV-1975');
INSERT INTO people VALUES('007007007', 'James Bond', 6, 180, 'blue', 'brown', 'undisclosed', 'm', '5-OCT-1962');
INSERT INTO people VALUES('222222222', 'Spencer Plant', 5.7, 130, 'blue', 'brown', 'CS Building, U of A, Edmonton', 'm', '20-OCT-1994');
INSERT INTO people VALUES('666666666', 'Officer Jane', 5.1, 90, 'green', 'blonde', 'Police Station, Edmonton', 'f', '29-MAY-1969');
INSERT INTO people VALUES('777777777', 'Officer Jim', 5.5, 200, 'black', 'blonde', 'Police Station, Edmonton', 'm', '4-MAY-1971');

INSERT INTO drive_licence VALUES('225544-456', '111111111', '5', null, '19-JAN-2013', '21-AUG-2018');
INSERT INTO drive_licence VALUES('568789-326', '123456789', '5', null, '20-APR-2014', '20-APR-2019');
INSERT INTO drive_licence VALUES('112456-698', '456238456', 'nondriving', null, '29-JUN-2013', '10-MAR-2017');
INSERT INTO drive_licence VALUES('461583-687', '658945213', '2', null, '11-FEB-2016', '19-DEC-2020');
INSERT INTO drive_licence VALUES('662444-332', '666452111', '4', null, '4-JUL-2012', '4-NOV-2017');
INSERT INTO drive_licence VALUES('700700-700', '007007007', '1', null, '11-FEB-2016', '19-DEC-2020');
INSERT INTO drive_licence VALUES('566565-444', '222222222', '4', null, '20-JUL-2016', '20-OCT-2020');
INSERT INTO drive_licence VALUES('666666-666', '666666666', '1', null, '12-FEB-2016', '29-MAY-2020');
INSERT INTO drive_licence VALUES('777777-777', '777777777', '1', null, '9-JUL-2016', '4-MAY-2020');

INSERT INTO driving_condition VALUES(100, 'Must wear prescription glasses');
INSERT INTO driving_condition VALUES(200, 'Must have slept within the last 16 hours');

INSERT INTO restriction VALUES('112456-698', 100);
INSERT INTO restriction VALUES('461583-687', 200);

INSERT INTO vehicle_type VALUES(1, 'sedan');
INSERT INTO vehicle_type VALUES(2, 'coupe');
INSERT INTO vehicle_type VALUES(3, 'sport');
INSERT INTO vehicle_type VALUES(4, 'hatchback');
INSERT INTO vehicle_type VALUES(5, 'truck');
INSERT INTO vehicle_type VALUES(6, 'mini van');
INSERT INTO vehicle_type VALUES(7, 'semi');
INSERT INTO vehicle_type VALUES(8, 'SUV');

INSERT INTO vehicle VALUES('000000000000001', 'Volkswagen', 'Golf', 2001, 'Blue', 4);
INSERT INTO vehicle VALUES('000000000000002', 'Ford', 'F-150', 2006, 'Red', 5);
INSERT INTO vehicle VALUES('000000000000003', 'Honda', 'Accord', 2013, 'Silver', 1);
INSERT INTO vehicle VALUES('000000000000004', 'Honda', 'Civic', 2003, 'Red', 2);
INSERT INTO vehicle VALUES('000000000000005', 'Mazda', '3', 2007, 'Yellow', 4);
INSERT INTO vehicle VALUES('000000000000006', 'BMW', 'M3', 2009, 'Mustard', 3);
INSERT INTO vehicle VALUES('000000000000007', 'Aston Martin', 'DB10', 2013, 'Black', 3);
INSERT INTO vehicle VALUES('000000000000008', 'Toyota', 'Sienna', 2015, 'Beige', 6);
INSERT INTO vehicle VALUES('000000000000009', 'Corvette', 'Stringray', 1969, 'Black', 3);
INSERT INTO vehicle VALUES('000000000000010', 'Honda', 'Accord', 2013, 'Silver', 1);
INSERT INTO vehicle VALUES('000000000000011', 'Honda', 'Civic', 2003, 'Red', 2);
INSERT INTO vehicle VALUES('000000000000012', 'Toyota', 'Sienna', 2015, 'Beige', 6);
INSERT INTO vehicle VALUES('000000000000013', 'Ford', 'Crown Victoria', 2000, 'White', 1);
INSERT INTO vehicle VALUES('000000000000014', 'Honda', 'Pilot', 2003, 'Red', 8);
INSERT INTO vehicle VALUES('000000000000015', 'Toyota', 'Highlander', 2011, 'Silver', 8);
INSERT INTO vehicle VALUES('000000000000016', 'BMW', 'X1', 2000, 'Green', 8);

INSERT INTO owner VALUES('111111111', '000000000000002', 'y');
INSERT INTO owner VALUES('123456789', '000000000000002', 'n');
INSERT INTO owner VALUES('007007007', '000000000000007', 'y');
INSERT INTO owner VALUES('456238456', '000000000000009', 'y');
INSERT INTO owner VALUES('456238456', '000000000000006', 'y');
INSERT INTO owner VALUES('456238456', '000000000000005', 'y');
INSERT INTO owner VALUES('222222222', '000000000000001', 'y');
INSERT INTO owner VALUES('222222222', '000000000000003', 'y');
INSERT INTO owner VALUES('222222222', '000000000000004', 'y');
INSERT INTO owner VALUES('658945213', '000000000000005', 'y');
INSERT INTO owner VALUES('658945213', '000000000000008', 'y');
INSERT INTO owner VALUES('658945213', '000000000000011', 'y');
INSERT INTO owner VALUES('666452111', '000000000000012', 'y');
INSERT INTO owner VALUES('666666666', '000000000000013', 'y');
INSERT INTO owner VALUES('777777777', '000000000000013', 'n');
INSERT INTO owner VALUES('007007007', '000000000000014', 'y');
INSERT INTO owner VALUES('007007007', '000000000000015', 'y');
INSERT INTO owner VALUES('007007007', '000000000000016', 'y');

INSERT INTO auto_sale VALUES(101, '222222222', '658945213', '000000000000003', '25-DEC-2013', 16500.87);
INSERT INTO auto_sale VALUES(102, '666452111', '658945213', '000000000000011', '3-DEC-2013', 6500.87);
INSERT INTO auto_sale VALUES(103, '456238456', '007007007', '000000000000007', '30-APR-2012', 55665.45);
INSERT INTO auto_sale VALUES(104, '222222222', '658945213', '000000000000010', '12-FEB-2011', 7856.55);

INSERT INTO ticket_type VALUES('sedan', 50);
INSERT INTO ticket_type VALUES('coupe', 80);
INSERT INTO ticket_type VALUES('sport', 200);
INSERT INTO ticket_type VALUES('hatchback', 50);
INSERT INTO ticket_type VALUES('truck', 80);
INSERT INTO ticket_type VALUES('mini van', 40);
INSERT INTO ticket_type VALUES('semi', 300);

INSERT INTO ticket VALUES(101, '007007007', '000000000000007', '777777777', 'sport', '26-OCT-2015','Scotland','Speeding and chasing.');
INSERT INTO ticket VALUES(102, '456238456', '000000000000009', '666666666', 'sport', '18-FEB-2015', 'Whyte Ave, Edmonton','Distracted driving.');
INSERT INTO ticket VALUES(103, '658945213', '000000000000008', '777777777', 'sport', '5-JUN-2014', 'Cent. Park, Edmonton', 'Parking without a permit.');
exit;