#import "../style.typ": citefig
#import "../functions.typ": chapter, textcite, parencite, note, avoid_indent

#pagebreak()
= Nederlanse samenvatting (Dutch Summary)
#avoid_indent()
Stelt u zich eens voor dat u vooraf kunt zeggen welke individuen een pilotenopleiding, een Harvard voorselectie, of zelfs in NASA's astronauten selectie kunnen halen.
Dit zou veel teleurstelling bij individuen kunnen voorkomen en het zou organisaties veel tijd en geld kunnen besparen.
Helaas zijn dit soort voorspellingen bijzonder moeilijk te maken.
Een recruit kan bijvoorbeeld de beste in zijn opleiding zijn, maar toch uitvallen door problemen thuis of een misstap in een konijnenhol.

Samen met het Korps Commandotroepen hebben we onderzocht of we kunnen voorspellen wie gaat uitvallen van de opleiding.
Om dit te doen hebben we data van 275 recruten verzameld in de vorm van sportdata (zoals 2800 meter hardlooptijd) en psychologische data (zoals persoonlijkheidsvragenlijsten).
In hoofdstuk 2 hebben we deze persoonlijkheids data uit de eerste week van de opleiding gebruikt.
Op basis van deze data hebben we onderzocht of we persoonlijkheidskenmerken konden gebruiken om onderscheid te maken tussen mensen die zijn uitgevallen en mensen die zijn geslaagd.
Ook hebben we onze data vergeleken met data van Nederlandse burgers uit een ander onderzoek.
We vonden dat commando's typisch minder neurotisch, meer consciëntieus en minder open voor ervaringen waren dan de burgers.
Voor de geslaagden vonden we dat ze typisch minder neurotisch en meer consciëntieus leken te zijn.
Voor selectie leken de persoonlijkheidskenmerken niet voldoende voorspellend te zijn.

Vanaf hoofdstuk 3 hebben we ons meer gericht op het voorspellen van uitval.
In onze data analyses vonden we dat veel statistische modellen niet goed presteerden op het gebied van voorspellend vermogen, stabiliteit of uitlegbaarheid.
Daarom hebben we een statistisch model wat bekend staat als _Stable and Interpretable RUle Sets_ (SIRUS) opnieuw geïmplementeerd in de programmeertaal Julia.
Dit zorgde ervoor dat het aantal regels code gereduceerd kon worden.
Dit verhoogde de leesbaarheid en liet ons (en mogelijk toekomstige wetenschappers) daardoor beter begrijpen hoe het model werkte zodat het makkelijker te verbeteren is.
Op enkele test datasets presteerde onze implementatie vergelijkbaar met de originele implementatie in de R programmeertaal.

In hoofdstuk 4 hebben we deze nieuwe implementatie en enkele andere modellen weer toegepast op de data uit de eerste week van de opleiding.
Dit keer hebben we niet alleen naar persoonlijkheid gekeken, maar ook naar de sportdata.
Op deze data hebben we vervolgens vier verschillende modellen vergeleken op voorspellingsvermogen,
stabiliteit en uitlegbaarheid.
We vonden dat het SIRUS model het meest geschikt was voor het voorspellen van uitval.
Ook vonden we dat fysieke en psychologische data beide gerelateerd waren aan uitval.
Meer specifiek, een langzamere score op de 2800 meter hardlooptijd, verbondenheid, en een huidplooimeting waren sterk gerelateerd aan uitval.

In hoofdstuk 5 hebben we onderzocht of we de voorspellingen konden verbeteren door de data gedurende de hele opleiding te verzamelen.
Deze vragenlijsten waren korter, maar werden iedere week afgenomen in plaats van alleen in de eerste week.
Weer hebben we meerdere machine learning modellen op de data getest.
In dit geval was een lineaire regressie model het meest geschikt voor het voorspellen van uitval.
Met dit model vonden we dat lagere scores op zelfeffectiviteit en motivatie geassocieerd waren met uitval.
We vonden ook dat het model in veel gevallen uitval al enkele weken van tevoren kon voorspellen.
Dit biedt mogelijkheden voor het vroegtijdig ingrijpen om uitval te voorkomen.

In conclusie, om de vraag te beantwoorden of we kunnen voorspellen van de special forces opleiding:
Uit hoofdstuk 4 en 5 lijkt het erop dat we uitval redelijk goed kunnen voorspellen.
Het volgende doel is om deze resultaten in de praktijk te testen, omdat dat de enige manier is om met zekerheid te weten hoe goed deze technieken werken.
