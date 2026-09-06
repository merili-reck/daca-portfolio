 -- LEFT JOIN: kõik kliendid, ka need kellel pole oste. Kokku 599.
 SELECT c.first_name, c.last_name, c.email, c.city, c.registration_date, s.sale_id
 FROM customers c
 LEFT JOIN sales s ON c.customer_id = s.customer_id
 WHERE s.sale_id IS NULL

 -- Mitu kadunud klienti on? 599.
 SELECT COUNT(*) AS kadunud_kliente
 FROM customers c
 LEFT JOIN sales s ON c.customer_id = s.customer_id
 WHERE s.sale_id IS NULL;

 -- Analüüsi kadunud kliente linnade kaupa. Kadunud kliente on kõikides linnades. Top 3: Tallinn, Tartu & Pärnu. Viiendal kohal Valga, tundub kummaline.
SELECT c.city,
COUNT(*) AS kadunud_kliente
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL
GROUP BY c.city
ORDER BY kadunud_kliente DESC;

-- Millal kadunud kliendid registreerusid? Vahemikus 2.01.2020-27.02.2025.
SELECT c.first_name || ' ' || c.last_name AS klient, c.registration_date, c.city, c.loyalty_tier
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL
ORDER BY c.registration_date DESC;

-- Võrdle kadunud vs aktiivsete klientide arvu. Kadunud klientide arv 599, aktiivsete klientide arv 2551. Kadunud kliente peaaegu veerand koguarvust. Probleem.
SELECT
CASE WHEN s.sale_id IS NULL THEN 'Kadunud (pole ostnud)' ELSE 'Aktiivne (on ostnud)' END AS staatus,
COUNT(DISTINCT c.customer_id) AS kliente
FROM customers c    LEFT JOIN sales s ON c.customer_id = s.customer_id
GROUP BY CASE WHEN s.sale_id IS NULL THEN 'Kadunud (pole ostnud)' ELSE 'Aktiivne (on ostnud)' END; 

-- Grupeeri kadunud kliendid registreerimiskuupäeva järgi ja otsi mustreid. Oktoobrist veebruarini rohkem kadunud kliente.
SELECT DATE_TRUNC('month', c.registration_date) AS registreerimis_kuu,
COUNT(*) AS kadunud_kliente
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL
GROUP BY DATE_TRUNC('month', c.registration_date)
ORDER BY kadunud_kliente DESC;

-- Mitu klienti pole kunagi ostnud? 599. Veerand kogu klientide arvust.
-- Millised linnad? Kõik 12 esindatud linna: Tallinn, Tartu, Pärnu, Narva, Valga, Kuressaare, Viljandi, Haapsalu, Rakvere, Võru, Jõhvi & Paide.
-- Millal registreerusid? Vahemikus 2.01.2020-27.02.2025.
-- Soovitus: kuidas neid tagasi võita? Hooajakampaaniaid teha, nt Black Friday ja jõulukampaaniad.
