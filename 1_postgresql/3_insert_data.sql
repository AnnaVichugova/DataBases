set schema 'base_case';

insert into customer_states values (1, 'created'), (2, 'verified'), (3, 'deleted');
insert into customer values (1, 'Ivan', 'iv@mail.ru', 79997777777, 1), (2, 'Anna', 'ann@yandex.ru', 79997777771, 2), (3, 'Lisa', 'lis@mail.ru', 79997777772, 3), (4, 'Daria', 'dar@yandex.ru', 79997777772, 2), (5, 'Don', 'don@mail.ru', 79997777773, 2), (6, 'Anna', 'ann123@mail.ru', 79997777774, 1);
insert into order_states values (1, 'created'), (2, 'submitted'), (3, 'payed'), (4, 'delivered'), (5, 'canceled');

INSERT INTO provider
VALUES (1, 'Jerald Bosley', '79237777777', 'maye2505@paintball.com', '8764 Waterdale'),
(2, 'Nathaniel Atherton', '79237777776', 'samella-schubert@pop.com', '7359 Red Lane'),
(3, 'Fay Manson', '79237777775', 'marg_beaudoin-dees@starter.com', '0175 Haughton'),
(4, 'Shoshana Freeland', '79234777777', 'kristal_byrnes74@hotmail.com', '9530 Ashbury Lane'),
(5, 'Alejandrina Heard', '79233777777', 'flor.numbers5227@gmail.com', '5551 Longridge Road'),
(6, 'Alina Adame', '79237777774', 'essie-lerma07355@requires.com', '2109 Ashurst Road'),
(7, 'Reiko Foss', '79237777778', 'kallie7@gmail.com', '7051 Higher'),
(8, 'Julio Harp', '79237777779', 'emerita.bower@rp.com', '9579 Dunelm'),
(9, 'Irvin Donaldson', '79237177777', 'glynda321@solution.com', '5489 Dunoon Road'),
(10, 'Catalina Baumann', '79239977777', 'janeen-duran@hotmail.com', '1558 Hillier Avenue');



INSERT INTO product 
VALUES (35, 'bread', 1, 37.1690, 90),
(94, 'bread', 2, 67.3841, 35),
(1, 'eggs', 3, 97.0228, 43),
(17, 'milk', 3, 99.0106, 1),
(90, 'chicken', 5, 61.7750, 80),
(13, 'apples', 9, 23.4605, 10),
(86, 'soap', 7, 50.5589, 80),
(88, 'pen', 7, 13.7994, 82),
(76, 't-shirts', 7, 231.6071, 25),
(37, 'water', 4, 29.7222, 85);


INSERT INTO delivery
VALUES 
(50, '2023-04-23', '7556 Crowcroft Street, Dallas, Montana, 77690', 175.8),
(57, '2023-04-23', '9600 Briarlands Avenue, Ogden, Wyoming, 35281', 48.12),
(99, '2023-05-04', '7556 Crowcroft Street, Dallas, Montana, 77690', 235.64),
(90, '2023-05-16', '7556 Crowcroft Street, Dallas, Montana, 77690', 69.92),
(86, '2023-04-26', '9600 Briarlands Avenue, Ogden, Wyoming, 35281', 179.91),
(53, '2023-05-04', '5449 Rockhaven Road, Boston, Mississippi, 16960', 94.23),
(74, '2023-06-02', '9600 Briarlands Avenue, Ogden, Wyoming, 35281', 26.79),
(29, '2023-06-16', '9600 Briarlands Avenue, Ogden, Wyoming, 35281', 15.57),
(15, '2023-07-14', '2451 Crandon Circle, Phoenix, Louisiana, 79059', 33.22),
(19, '2023-04-25', '7556 Crowcroft Street, Dallas, Montana, 77690', 129.64);

INSERT INTO "order"
VALUES
(1, 2, 76, 5, 50, 325.30, '2023-04-23'),
(2, 2, 88, 4, 19, 616.60, '2023-04-24'),
(3, 4, 35, 3, 53, 540.23, '2023-04-25'),
(4, 2, 1, 1, 99, 985.55, '2023-04-20'),
(5, 5, 94, 3, 86, 1008.84, '2023-04-26'),
(6, 5, 1, 3, 74, 377.87, '2023-04-21'),
(7, 5, 17, 4, 57, 591.65, '2023-04-12'),
(8, 5, 90, 3, 29, 425.70, '2023-04-12'),
(9, 2, 76, 3, 90, 835.22, '2023-04-27'),
(10, 5, 35, 2, 15, 743.13, '2023-04-28');

INSERT INTO "order_product"
VALUES
(1, 1, 76, 1),
(2, 2, 88, 4),
(3, 3, 35, 5),
(4, 4, 1, 20),
(5, 5, 94, 10),
(6, 6, 1, 5),
(7, 7, 17, 4),
(8, 8, 90, 3),
(9, 9, 76, 1),
(10, 10, 35, 6);


--check 
-- select cs.name as status_name, count(1) as cc
-- from customer as c 
-- inner join customer_states as cs 
-- on c.state = cs.id
-- group by cs.name
-- order by 2 desc
-- limit 100;

-- select os.name as order_state, count(1) as cc
-- from "order" as o
-- inner join order_states as os 
-- on o.state = os.id
-- group by os.name
-- order by 2 desc;
