#import "../style.typ": citefig
#import "../functions.typ": chapter, textcite, parencite, note, avoid_indent

#pagebreak()
// This doesn't need a special chapter opening page.
= Nederlanse samenvatting (Dutch Summary)
#avoid_indent()
Stelt u zich eens voor dat u vooraf kunt zeggen welke individueen een pilotenopleiding, een Harvard voorselectie, of zelfs in NASA's astronauten selectie kunnen halen.
Dit zou veel teleurstelling by individuen kunnen voorkomen en het zou organisaties veel tijd en geld kunnen besparen.
Helaas zijn dit soort voorspellingen bijzonder moeilijk te maken.
Een recruit kan bijvoorbeeld de beste in zijn opleiding zijn, maar toch uitvallen door problemen thuis of een misstap in een konijnenhol.

Samen met het Korps Commandotroepen hebben we onderzocht of we kunnen voorspellen wie gaat uitvallen van de opleiding.
Om dit te doen hebben we data van 275 recruten verzameld in de vorm van sportdata (zoals 2800 meter hardlooptijd) en psychologische data (zoals persoonlijkheidsvragenlijsten).
In hoofdstuk 2 hebben we deze data uit de eerste week van de opleiding gebruikt.
Op basis van deze data hebben we onderzocht of we persoonlijkheidskenmerken konden gebruiken om onderscheid te maken tussen mensen die zijn uitgevallen en mensen die zijn geslaagd.
Ook hebbben we onze data vergeleken met data van Nederlandse burgers uit een ander onderzoek.
We vonden dat commandos typisch minder neurotisch, meer conscientieeus en minder open voor ervaringen waren dan de burgers.
Voor de geslaagden vonden we dat ze typisch minder neurotisch en meer conscientieus leken te zijn.
Voor selectie leken de persoonlijkheidskenmerken niet voldoende voorspellend te zijn.

Vanaf hoofdstuk 3 hebben we ons meer gericht op het voorspellen van uitval.
In onze data analyses vonden we dat veel statistische modellen niet goed presteerden op het gebied van voorspellend vermogen, stabiliteit of uitlegbaarheid.
Daarom hebben we een statistisch model wat bekend staat als _Stable and Interpretable RUle Sets_ (SIRUS) opnieuw geimplementeerd in de programmeertaal Julia.
Dit zorgde ervoor dat het aantal regels code gereduceerd kon worden.
Dit verhoogde de leesbaarheid en liet ons (en mogelijk toekomstige wetenschappers) daardoor beter begrijpen hoe het model werkte zodat het makkelijker te verbeteren is.

