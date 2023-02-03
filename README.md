# :blue_heart: Welcome to EqualStreetNames Zurich :blue_heart:
:blue_heart: :white_heart: :blue_heart: :white_heart: :blue_heart: Sali bi EqualStreetNames Züri :blue_heart: :white_heart: :blue_heart: :white_heart: :blue_heart:

> Street names reflect the commemorative decisions of each municipality over time, and as such can be understood as the city’s manifesto about its social, cultural and political values. <cite>(Oto-Peralías D, [2018](https://doi.org/10.1093/jeg/lbx030))</cite>.


> Die deutliche Absenz von konkreten Frauenfiguren im öffentlichen Raum spiegeln [...] die Schweizer Geschichtsvergessenheit in Bezug auf Frauen und ihren Ausschluss aus der politischen und wirtschaftlichen Sphäre.
>
> -- <cite>Essay der Historikerinnen Tiziana Bonetti und Rachel Huber. In [blick.ch](https://www.blick.ch/life/wissen/geschichte/schweizer-erinnerungskultur-wieso-es-mehr-frauendenkmaeler-braucht-id17408231.html)</cite>  

---

Follow us on:
- Mastodon: [@EqualsnZueri@swiss.social](https://swiss.social/@EqualsnZueri)
- Twitter: https://twitter.com/equalsnzueri


# Overview
🌟 [zurich.equalstreetnames.eu](https://zurich.equalstreetnames.eu) shows all Streets named after a Person. 🌟  
This means there should no more streets missing on the map. If we missed one, please leave a note on mastodon, twitter or raise an issue in this repo. Thanks 🙌

---

# How To

## Add Information to Wikidata
To make the map of equalstreetnames work, a wikidata of the person entry needs following statements marked with *. All other Statements are optional:
* *`label` (in English)
* *`description` (in English)
* Statements:
  * *`instance of` (P31) = `human` (Q5)
  * *`sex or gender` (P21) with following possible values according to Propertydefinition:
    * `femal` (Q6581072)
    * `intersex` (Q1097630)
    * `male` (Q6581097)
    * `transgender female` (Q1052281)
    * `transgender male` (Q2449503)
  * `image` (P18)
  * `date of birth` (P569)
  * `place of birth` (P19)
  * `date of death` (P570)
  * `place of death` (P20)
  * `commemorative plaque image` (P1801). Image of the Tafeltext of the Street. Check [Wikimedia Category "Street_signs_in_Zürich"](https://commons.wikimedia.org/wiki/Category:Street_signs_in_Z%C3%BCrich). Example: [Ernst Nobs](https://www.wikidata.org/wiki/Q115561)

* Identifiers:
  * `HDS ID` (P902). Link to the HLS-article-Nr of this person. Example: [Annemarie Schwarzenbach](https://www.wikidata.org/wiki/Q123368)

## Politician
* `occupation` (P106) == `politician` (Q82955)
* `member of political party` (P102) 

### Gemeindepräsidentin
Example: [Heinrich Steffen](https://www.wikidata.org/wiki/Q111222591)
* `position held` (P39): `municipality president (Switzerland)` (Q1268257)
  * `start time` (P580)
  * `end time` (P582)
  * `of` (P642)

### Gemeinderätin
[Mitglieder Gemeinderat](https://www.gemeinderat-zuerich.ch/mitglieder)  
Example: [Heinrich Kleinert](https://www.wikidata.org/wiki/Q111219596)
* `position held` (P39): `Member of the Zurich City Parliament` (Q111219780)
  * `start time` (P580)
  * `end time` (P582)

### Stadträtin
[Ehemalige Stadtratsmitglieder seit 1892](https://www.stadt-zuerich.ch/portal/de/index/politik_u_recht/stadtrat/ehemalige_stadtratsmitglieder_seit_1892.html)  
Example: [Sigmund Widmer](https://www.wikidata.org/wiki/Q120794)
* `position held` (P39): `Member of the Zurich City Council` (Q111135845)
  * `start time` (P580)
  * `end time` (P582)


### Kantonsrätin
[Kantonsratsmitglieder ab 1803](https://www.zh.ch/de/politik-staat/wahlen-abstimmungen/kantons-regierungsratswahlen/mitglieder-kantonsrats-ab-1803.html)

### Regierungsrätin
[Regierungsratsmitglieder ab 1831](https://www.zh.ch/de/politik-staat/wahlen-abstimmungen/kantons-regierungsratswahlen/mitglieder-regierungsrat.html)

## Owner / Founder of a Company
On the person:
* `owner of` (P1830) 
  * `start time` (P580)
  * `end time` (P582)
* `position held` (P39) ==  `chief executive officer` (Q484876) 
  * `start time` (P580)
  * `end time` (P582)  
* `employer` (P108) 

Example:
* [Johannes Sträuli](https://www.wikidata.org/wiki/Q78072440)

On The Company:
* `founded by` (P112) 
* `inception` (P571) 
* `owned by` (P127) 

Example:
* [Seifenfabrik Sträuli](https://www.wikidata.org/wiki/Q25387502)

## Founder / Worker of an Organization
On the Organization
* `inception` (P571) 
* `founded by` (P112). Für Gründerin
* `chairperson` (P488). Für Präsidentin
  * `start time` (P580)
  * `end time` (P582)  
  
Example:
* [Schweizerischer Arbeiterinnenverband](https://www.wikidata.org/wiki/Q2513935) 

On the person:
* `member of` (P463) 
* `member of political party` (P102). If in a political Party
* `employer` (P108). If worked for the organization

Example:
* [Verena Conzett](https://www.wikidata.org/wiki/Q2515240) 


## Declare Sources
If you add Information to Wikidata, don't forget to cite your source.

Adding Information from the Strassenverzeichnis to a Statement:
* click `add reference`
* choose:
  * `stated in` = `Street name directory Zurich` (Q27320908)
  * `retrieved` = Date of Day you entered the Information (Usualy Today)
* Example: `date of birth` of [Anna Häuptli](https://www.wikidata.org/wiki/Q27323074)

Adding Information from the HLS to a Statement
* click `add reference` 
* choose:
  * `stated in` = `Historical Dictionary of Switzerland` (Q642074)
  * `retrieved` = Date of Day you entered the Information (Usualy Today)
  * `HDS ID` = 6-Digit ID of the HDS Article. E.g. `009370` for [Erika Rikli](https://hls-dhs-dss.ch/de/articles/009370/2012-09-11/)
  * `reference URL` = URL to the article like https://hls-dhs-dss.ch/de/articles/009370/2012-09-11/
* Example: `place of birth` of [Erika Rikli](https://www.wikidata.org/wiki/Q96489752)



## New Wikipedia article

If there is no existing Wikipedia Articel, the "Historische Lexikon der Schweiz (HLS)" alows to copy there complete Information to Wikipedia. See: [Nutzungshinweise](https://hls-dhs-dss.ch/de/about/usage)

Declare Sources on Wikipedia :warning:

If you add Information to Wikipedia, don't forget to cite your source.
* If you create an Article completly baed on HLS add `{{HLS-Text|202356100}}` or even better `{{HLS-Text|Artikel=026515/2011-12-28|Version=190573009|Autor=Stefanie Spirig-Bülte}}` according [Vorlage:HLS-Text](https://de.wikipedia.org/wiki/Vorlage:HLS-Text)
* If only some Texts are form HLS, add a Weblink according [Vorlage:HLS](https://de.wikipedia.org/wiki/Vorlage:HLS)

# Datasoures
## Strassenverzeichnis der Stadt Zürich
We use the official [Strassennamenverzeichnis](https://data.stadt-zuerich.ch/dataset/geo_strassennamenverzeichnis) of the [City of Zurich Open Data Portal](https://www.stadt-zuerich.ch/opendata) to figure out who the streets of the City of Zurich are named after.
This dataset contains three data tables of which we think `sv_str_verz` is the most useful one as it contains the following properties (data rows):
- str_name
- snb_erlaeuterung
- snb_tafeltext_1

Direct links to access the `sv_str_verz` data table of Strassennamenverzeichnis:
- [whole Dataset as geojson](https://www.ogd.stadt-zuerich.ch/wfs/geoportal/Strassennamenverzeichnis?service=WFS&version=1.1.0&request=GetFeature&outputFormat=GeoJSON&typename=sv_str_verz)
- [Dataset reduced with the properties above as geojson](https://www.ogd.stadt-zuerich.ch/wfs/geoportal/Strassennamenverzeichnis?service=WFS&version=1.1.0&request=GetFeature&outputFormat=GeoJSON&typename=sv_str_verz&propertyname=str_name,snb_erlaeuterung,snb_tafeltext_1)

An easy access to the Data is possible on [Strassennamen-Datenbank der Stadt Zürich](https://stadt-zuerich.ch/strassennamen-datenbank)  
Strassennamenverzeichnis is published under [Creative Commons CCZero](https://opendefinition.org/licenses/cc-zero/) Licence

## Historisches Lexikon der Schweiz (HLS)
More about [HLS on Wikipedia](https://de.wikipedia.org/wiki/Historisches_Lexikon_der_Schweiz).

[HLS](https://hls-dhs-dss.ch) is published under [Creative Commons BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). See also Nutzungsbedingungen of HLS: [Urheberrechte und Verwendung der HLS-Inhalte](https://hls-dhs-dss.ch/de/about/usage#HUrheberrechteundVerwendungderHLS-Inhalte)

You may use HLS to add Information on Wikidata / Wikipedia and even create a Wikipedia-article entirely based on an HLS-article. 
:warning: If you do so, Cite all Informations! See Advanced Section.

# Data Quality
Checkout following Projects which check Data used by zurich.equalstreetnames.eu: 
- [equalstreetnames-zurich-todo](https://github.com/metaodi/equalstreetnames-zurich-todo)
- [equalstreetnames-zurich-QS](https://github.com/CaptainInler/equalstreetnames-zurich-QS)

# ToDo
- [ ] List of all ~500 Streetnames on Github.
- [x] The official Strassenverzeichnis lists 2'542 named streets in Zürich. Equalstreetnames mentiones 2'472 named Streets. Why is there a difference? -> Because some Streets in listed in the official Strassenverzeichnis are planed but not realised yet.
- [x] Ask [frauenstadtrundgangzuerich.ch](www.frauenstadtrundgangzuerich.ch) to use Videos of [Digital Stadtrundgänge](https://www.frauenstadtrundgangzuerich.ch/digitale-rundg%C3%A4nge) on Wikimedia -> Twitter
