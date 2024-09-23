#import "../style.typ": citefig
#import "../functions.typ": chapter, textcite, parencite, note, avoid_indent

#pagebreak()
= Nederlanse samenvatting (Dutch Summary)
#avoid_indent()
Stelt u zich eens voor dat u vooraf kunt zeggen welke individuen een pilotenopleiding, een Harvard voorselectie, of zelfs in NASA's astronauten selectie kunnen halen.
Dit zou veel teleurstelling bij individuen kunnen voorkomen en het zou organisaties veel tijd en geld kunnen besparen.
Helaas zijn dit soort voorspellingen bijzonder moeilijk te maken.
Een recruit kan bijvoorbeeld de beste in zijn opleiding zijn, maar toch uitvallen door problemen thuis of een misstap in een konijnenhol.

Samen met het Korps Commandotroepen hebben wij onderzocht of wij kunnen voorspellen wie gaat uitvallen van de opleiding.
Om dit te doen hebben wij data van 275 recruten verzameld in de vorm van sportdata (zoals 2800 meter hardlooptijd) en psychologische data (zoals persoonlijkheidsvragenlijsten).
In hoofdstuk 2 hebben wij deze persoonlijkheids data uit de eerste week van de opleiding gebruikt.
Op basis van deze data hebben wij onderzocht of wij persoonlijkheidskenmerken konden gebruiken om onderscheid te maken tussen mensen die zijn uitgevallen en mensen die zijn geslaagd.
Ook hebben wij onze data vergeleken met data van Nederlandse burgers uit een ander onderzoek.
We vonden dat commando's typisch minder neurotisch, meer consciëntieus en minder open voor ervaringen waren dan de burgers.
Voor de geslaagden vonden wij dat ze typisch minder neurotisch en meer consciëntieus leken te zijn.
Voor selectie leken de persoonlijkheidskenmerken niet voldoende voorspellend te zijn.

Vanaf Hoofdstuk 3 hebben wij ons meer gericht op het voorspellen van uitval.
In onze data analyses vonden wij dat veel statistische modellen niet goed presteerden op het gebied van voorspellend vermogen, stabiliteit of uitlegbaarheid.
Daarom hebben wij een statistisch model wat bekend staat als _Stable and Interpretable RUle Sets_ (SIRUS) opnieuw geïmplementeerd in de programmeertaal Julia.
Het doel van deze open-source implementatie was om het model beter te begrijpen en om het model beter toe te kunnen passen op onze data.
Tevens zorgde deze vertaling ervoor dat het aantal regels code gereduceerd kon worden.
Dit verhoogde de leesbaarheid voor onzelf en staat hopelijk in de toekomst andere onderzoekers toe om het algorithme te verbeteren of als de basis voor nieuwe algorithmes.
Wij hebben het voorspellend vermogen van het model vergeleken met andere modellen en de originele implementatie.
Hieruit bleek dat het voorspellend vermogen van onze implementatie vergelijkbaar was met de originele implementatie in de R programmeertaal.

In hoofdstuk 4 hebben wij deze nieuwe implementatie en enkele andere modellen weer toegepast op de data uit de eerste week van de opleiding.
Dit keer hebben wij niet alleen naar persoonlijkheid gekeken, maar ook naar de sportdata.
Op deze data hebben wij vervolgens vier verschillende modellen vergeleken op voorspellingsvermogen,
stabiliteit en uitlegbaarheid.
We vonden dat het SIRUS model het meest geschikt was voor het voorspellen van uitval.
Ook vonden wij dat fysieke en psychologische data beide gerelateerd waren aan uitval.
Meer specifiek, een langzamere score op de 2800 meter hardlooptijd, verbondenheid, en een huidplooimeting waren sterk gerelateerd aan uitval.

In hoofdstuk 5 hebben wij onderzocht of wij de voorspellingen konden verbeteren door de data gedurende de hele opleiding te verzamelen.
Deze vragenlijsten waren korter, maar werden iedere week afgenomen in plaats van alleen in de eerste week.
Wij hebben opnieuw meerdere machine learning modellen op de data getest.
In dit geval was een lineaire regressie model het meest geschikt voor het voorspellen van uitval.
Met dit model vonden wij dat lagere scores op zelfeffectiviteit en motivatie geassocieerd waren met uitval.
We vonden ook dat het model in veel gevallen uitval al enkele weken van tevoren kon voorspellen.
Dit biedt mogelijkheden voor het vroegtijdig ingrijpen om uitval te voorkomen.

In conclusie, om de vraag te beantwoorden of wij kunnen voorspellen van de special forces opleiding:
Uit hoofdstuk 4 en 5 lijkt het erop dat wij uitval redelijk goed kunnen voorspellen.
Het volgende doel is om deze resultaten in de praktijk te testen, omdat dat de enige manier is om met zekerheid te weten hoe goed deze technieken werken.
