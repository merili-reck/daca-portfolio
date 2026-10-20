## Esiletõstetud projektid

### 1. UrbanStyle'i müügi uurimine SQL-iga

**Kasutatud tehnoloogiad:** SQL (PostgreSQL), CTE

Uurisin müügitabelit SQL-i agregaatfunktsioonide ja CTE-ga. Käive kukub järsult septembris ja aasta alguses ning lasteriided jäävad kogumüügilt alla 500 000 euro.

**Äritõlgendus:** teha augusti lõpust alates kooliaasta algusele suunatud hooajakampaaniaid, mis tõstavad korraga nii septembri kui ka lasteriiete käivet.

[Projekti README](week-4/N4%20README.md) | [SQL-fail](week-4/week4_sales_aggregation.sql)

### 2. Pärnu poe ülevaade Power BI-s

**Kasutatud tehnoloogiad:** Power BI, DAX

Lõin grupitöö raames ülevaate Pärnu poest. Pärnu ei ole ühelgi suvel saavutanud 30 000 euro kuist müügieesmärki.

**Äritõlgendus:** kaaluda püüdmata klientuuri kaasamist kampaaniate abil või Pärnu poe sulgemist ja ressursside suunamist online-poodi, mis täidab järjepidevalt target'eid.

![UrbanStyle'i Power BI dashboard (individuaalne)](week-6/urbanstyle-dashboard/images/dashboard_hero_screenshot.png)

[Projekti README](week-6/N6%20README.md)

### 3. Klientide segmenteerimine RFM-i alusel Pythonis

**Kasutatud tehnoloogiad:** Python, pandas, VS Code

Visualiseerisin grupitöö raames VS Code'is Pythoni RFM-i näitajad.

**Äritõlgendus:** VIP-klientide käibeosakaal on 42,8%, seega tasub keskenduda nende hoidmisele eripakkumistega. 522 at-risk klienti moodustavad kliendibaasist 20,5% ja vajavad win-back kampaaniaid.

[Projekti README](week-7/N7%20README.md) | [RFM-i notebook](week-7/week7_rfm_visualization.ipynb)

### 4. Live-andmete pärimine Supabase'i API kaudu

**Kasutatud tehnoloogiad:** Python, pandas, Supabase API

Lõin grupitöö raames Pythonis funktsioonid, mis pärivad Supabase'i API-st UrbanStyle'i andmed.

**Äritõlgendus:** asendada käsitsi allalaaditud CSV-failid API-päringuga, et KPI-d ja RFM-analüüs uueneksid automaatselt.

[Projekti README](week-8/N8%20README.md) | [data_fetcher.py](week-8/data_fetcher.py)
