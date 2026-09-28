# Nädal 6: Visualiseerimise põhitõed & Power BI kasutamine — UrbanStyle'i andmete uurimine

## Mida ma tegin
- Õppisin juba loodud visuaale annotatsioonide, label'ite ja viitejoonte abil viimistlema.
- Õppisin Power BI-s DAX-valemeid kasutama, et luua visualiseerimiseks vajalikke tulpi ja meetmeid.
- Õppisin Power BI-s lisaks desktop-vaatele looma ka mobiilivaadet.
- Grupitöö raames lõin ülevaate Pärnu poest.

## UrbanStyle Dashboard

### Dashboard'i lugu
Setup: UrbanStyle on kasvav moebränd kolme kauplusega.
Data: 3 aasta müügiandmed näitavad selget kasvu.
Action: Investeeri spordijalatsitesse ja auditeeri Tartu kauplust.

### Peamised leiud
- Kogu müügitulu: €2,9M (+19% YoY kasv)
- Hero product: Õhuline sünteetiline sporditossud (0,98% käibest)
- Risk: Tartu kaupluse langus (-5%)

### Kasutatud tehnoloogiad
- Power BI Desktop
- Supabase (PostgreSQL andmebaas)
- DAX mõõdikud (YoY Growth, Revenue Category)

## Grupitöö disainiotsuste põhjendused
- **KPId:** Jätsin ülaossa, sest tegu on kõige olulisema infoga. Lisaks kogutulule lisasin ka suvekuudel 30k euro täitmise protsendi ja suvemüügi osakaalu, sest nagu selgus, ei tõuse Pärnu poe käive suvekuurordi kohta piisavalt. Säilitasin eelmise nädala värviskeemi, mis lähtub UrbanStyle'i brändivärvidest ja on selge ka värvipimedale vaatajale.
- **Diagrammid:** Säilitasin peamise diagrammina eelmisel nädalal loodud joondiagrammi, mis näitab müügitulu trendi ajas. Selle alla lisasin tulpdiagrammi kõige populaarsemate toodetega ning tulpdiagrammi kõrvale veel teise tulpdiagrammi, mis näitas suvemüükide osakaalu võrreldes ülejäänud aasta müükidega. Tulpdiagrammide eesmärk oli illustreerida asjaolu, et Pärnus küll ostetakse suvisel perioodil ka suvetooteid, kuid suvemüükide osakaal on samaväärne teiste poodidega ning sellest võib järeldada, et Pärnus on suvitajate kulul hetkel n-ö potentsiaalne püüdmata klientuur. Värviskeemis säilitasin UrbanStyle'i brändivärvid.
- **Viitejoon:** Lisasin müügitulu trendi joondiagrammile viitejoone, mis märgib Pärnu suvist 30k/kuus müügieesmärki. Viitejoon on oranž ja katkendlik, eesmärgiga silma paista, kuid mitte liigselt domineerida.
- **Annotatsioonid:** Lisasin annotatsioonid joondiagrammile, et vaatajale oleks kohe selge, et vaatamata kuurortlinna staatusele ei ole Pärnu ühelgi suvel müügieesmärki täitnud. Veel lisasin annotatsiooni suvemüüki osakaalu tulbale, sest ilma kontekstita poleks vaatajale selge, et see osakaal on Pärnu kohta liiga madal.

## Peamised õppetunnid
- Pärast visuaalse müra eemaldamist on oluline lisada dashboard'ile visuaalsed kontekstiviited (viitejooned, label'id, annotatsioonid), et vaatajale oleks kohe selge, miks talle konkreetseid diagramme näidatakse.
- Andmed ilma järjelduseta ei ütle palju. Oluline on välja tuua, mida nähtu põhjal edaspidi ette võtta.
- Mobiilivaate loomine on sama oluline kui desktop-vaade, sest üldiselt vaatavad investorid olulisimat just enda telefonist.

## AI kasutamine
- Kasutasin Claude'i abi vajalike DAX-valemite loomiseks ning üldiselt Power BI-s õigete sätete leidmiseks.

## Grupitöö link
https://docs.google.com/presentation/d/175G9j24R5GJ9Or9EvRadZt_BPE2NNsJ0jLlfqwcxoAQ/edit

## Failid
- `urbanstyle_week6_dashboard_merili.pbix` — individuaalne Power BI fail
- `urbanstyle_dashboard_export.pdf` — PDF-fail individuaalsest Power BI dashboard'ist
- `dashboard_hero_screenshot.png` — kuvatõmmis individuaalsest Power BI dashboard'ist
