-- Müük kuude kaupa.
-- Kõrgeim käive detsembris. See on hea, järelikult kliendid ostavad ja turundus toimib. Ka suvekuudel (juuni, juuli, august) käive on kõrge. Käive kukub järsult aasta alguses (jaanuaris, veebruaris ja märtsis). Siin peaks mõtlema ka, milles asi. Vaadata üle talvetoodete sortiment. Kas meie tootevalikus on asjad, mida inimesed tahavad osta ka väljaspool pühadeaega? Samuti tasub mõelda kampaaniatele. Veel on madal käive septembris. Iseenesest oleks siin võimalus rõhuda kooli algusele, sest koolilapsed katavad kõik tootekategooriad, mis meil sortimendis on.
SELECT
    DATE_TRUNC('month', sale_date) AS kuu,
    COUNT(sale_id) AS tellimuste_arv,
    SUM(total_price) AS kogukäive,
    ROUND(AVG(total_price), 2) AS keskmine_tellimus
FROM sales
WHERE sale_date >= '2024-01-01' AND sale_date < '2025-01-01'
GROUP BY DATE_TRUNC('month', sale_date)
ORDER BY kogukäive DESC;

-- Müük kategooriate kaupa, kus kogumüük on suurem kui 500 000.
-- Alla 500 000 jäid aksessuaarid ja lasteriided. Aksesuaaride osas oleme juba enne arutanud, et tarvis on nüüki suurendada. Küll aga tekitab ka küsimusi, et miks lasteriiete käive madal on. Lapsevanem on üldiselt valmis rohkem raha panustama, tihti on lastetooted üsna kallid. Peame vaatama üle oma hinnastuse, kaubavaliku ja turunduse. Samuti saaks lasteriiete kategooria madala käibe tõstmise siduda septembrikuu madala käibe tõstmisega, rõhudes koolilastele, kes kannavad veel lasteriiete kategooria riideid.
SELECT
    p.category AS kategooria,
    COUNT(*) AS toodete_arv,
    SUM(s.total_price) AS kogumüük,
    ROUND(AVG(s.total_price), 2) AS keskmine_hind
FROM sales s
INNER JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
HAVING SUM(s.total_price) > 500000
ORDER BY kogumüük DESC;

-- Kuised trendid CTE-ga.
-- Kõige järsem käibe kukkumine septembris. Eelpool on kirjeldatud, mida võiks teha, et ühekorraga parandada nii madalat käivet septembris kui ka lasteriiete madalamat käivet. Lisaks peaks vaatama üle sügistalviste riiete sortimendi ja hakkama kohe augusti lõpust tegema hooajalisi kampaaniaid.
WITH kuu_myyk AS (
    SELECT
        DATE_TRUNC('month', sale_date) AS kuu,
        SUM(total_price) AS käive
    FROM sales
    WHERE sale_date >= '2024-01-01' AND sale_date < '2025-01-01'
    GROUP BY DATE_TRUNC('month', sale_date)
)
SELECT
    kuu,
    käive,
    LAG(käive) OVER (ORDER BY kuu) AS eelmine_kuu,
    käive - LAG(käive) OVER (ORDER BY kuu) AS muutus
FROM kuu_myyk
ORDER BY muutus;
