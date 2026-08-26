-- Testtabeli loomine.
CREATE TABLE products_test AS SELECT *
FROM products;

-- Mitu rida? 362.
SELECT COUNT(*) AS ridade_arv
FROM products_test;

-- Mitu duplikaatset tootenime? 12.
SELECT product_name, COUNT(*) AS koopiate_arv
FROM products_test
GROUP BY product_name
HAVING COUNT(*) > 1
ORDER BY koopiate_arv DESC;

-- 0 NULL nimi, 0 NULL kategooria, 0 NULL jaehind, 0 NULL omahind.
SELECT
    COUNT(*) FILTER (WHERE product_name IS NULL OR product_name = '') AS null_nimi,
    COUNT(*) FILTER (WHERE category IS NULL OR category = '') AS null_kategooria,
    COUNT(*) FILTER (WHERE retail_price IS NULL) AS null_jaehind,
    COUNT(*) FILTER (WHERE cost_price IS NULL) AS null_omahind
FROM products_test;

-- Mitu negatiivset jaehinda? 0.
SELECT COUNT(*) AS negatiivne_hind
FROM products_test
WHERE retail_price < 0;

-- Kas on äärmuslikke hindu (> 1000€)? Ei ole.
SELECT product_name, retail_price
FROM products_test
WHERE retail_price > 1000
ORDER BY retail_price DESC;

-- Mitu erinevat kategooriat? 5: aksessuaarid, jalanõud, lasteriided, meesteriided, naisteriided. Duubeldatud kategooriaid ei ole.
SELECT category, COUNT(*) AS arv
FROM products_test
GROUP BY category
ORDER BY category;

-- Loeb tooted kategooriates.
SELECT category, COUNT(*)
FROM products_test
GROUP BY category;

-- Ühtlusta kategooriate nimed.
UPDATE products_test
SET category = INITCAP(TRIM(category))
WHERE category != INITCAP(TRIM(category));

-- Kontrolli tulemust.
SELECT category, COUNT(*) AS arv
FROM products_test
GROUP BY category ORDER BY category;

-- Ühtlusta kategooriate nimed.
UPDATE products_test
SET category = INITCAP(TRIM(category))
WHERE category != INITCAP(TRIM(category));

-- Kontrolli tulemust.
SELECT category, COUNT(*) AS arv
FROM products_test
GROUP BY category ORDER BY category;

-- Kategooriate standardiseerimine.
UPDATE products_test
SET category = CASE
    WHEN LOWER(TRIM(category)) IN ('shoes', 'jalanõud', 'footwear') THEN 'Shoes'
    WHEN LOWER(TRIM(category)) IN ('shirts', 'särgid', 'tops') THEN 'Shirts'
    WHEN LOWER(TRIM(category)) IN ('pants', 'püksid', 'trousers') THEN 'Pants'
    ELSE INITCAP(TRIM(category))
END;
