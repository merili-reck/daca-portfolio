-- Millised veerud ja andmed tabelis on? Customer_id, first_name, last_name, email, phone, city, registration_date, loyalty_tier, birth_year
SELECT * FROM customers LIMIT 10;

-- Mitu klienti kokku on? 3150.
SELECT COUNT(*) AS klientide_arv FROM customers;

-- Millised linnad on esindatud? 12 linna - Haapsalu, Jõhvi, Kuressaare, Narva, Paide, Pärnu, Rakvere, Tallinn, Tartu, Viljandi, Võru, Valga. 
SELECT DISTINCT city FROM customers
ORDER by city;

-- Narva kliendid, sorteeritud nime järgi.
SELECT * FROM customers
WHERE city = 'Narva'
ORDER BY last_name ASC
LIMIT 15;

-- Vanim ja uusim registreerimine? Vanim 2.01.2020 & uusim 27.02.2025.
SELECT MIN(registration_date) AS vanim,
       MAX(registration_date) AS uusim
FROM customers;

-- Mitmel kliendil puudub tabelis eesnimi? 0.
SELECT COUNT(*) - COUNT(first_name) AS puuduvad_eesnimed
FROM customers;

-- Mitmel kliendil on meiliaadress puudu? 380.
SELECT COUNT(*) - COUNT(email) AS puuduvad_emailid
FROM customers;

-- Kui palju on duplikaatseid meiliaadresse? 510.
SELECT COUNT(*) AS kokku_emaile,
       COUNT(DISTINCT email) AS unikaalseid_emaile
FROM customers;

-- Palju on kliente erinevates linnades? Tallinn 1238, Tartu 658, Pärnu 346, Narva 177, Viljandi 112, Rakvere 107, Valga 94, Kuressaare 98, Haapsalu 90, Jõhvi 83, Võru 81, Paide 66. 
SELECT city, COUNT(*) AS klientide_arv
FROM customers
GROUP BY city
ORDER BY klientide_arv DESC;

-- Mitu registreerimist theti viimase 6 kuu jooksul? 425.
SELECT * FROM customers
WHERE registration_date >= '2024-07-01'
ORDER BY registration_date DESC;

-- KOKKUVÕTE --
/* Kokku 3150 klienti, kes registreerusid vahemikus 2.01.2020-27.02.2025. Esindatud linnu on kokku 12: Tallinn, Tartu, Pärnu, Narva, Viljandi, Rakvere, Kuressaare, Valga, Haapsalu, Jõhvi, Võru, Paide.
Hetkel on puudu 380 kliendi meiliaadressid. Samuti on süsteemis 510 duplikaatset meiliaadressi.*/ 