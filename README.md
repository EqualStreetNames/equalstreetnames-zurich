# :blue_heart: Welcome to EqualStreetNames Zurich :blue_heart:
:blue_heart: :white_circle: :blue_heart: :white_circle: :blue_heart: Sali bi EqualStreetNames Züri :blue_heart: :white_circle: :blue_heart: :white_circle: :blue_heart:

We use this readme to document all used data and to provide a guideline on how to link this data for equalstreetnames

# Data
## Strassenverzeichnis der Stadt Zürich
We use the official [Strassennamenverzeichnis](https://data.stadt-zuerich.ch/dataset/geo_strassennamenverzeichnis) of the [City of Zurich Open Data Portal](https://www.stadt-zuerich.ch/opendata) to figure out who the streets of the City of Zurich are named after.
This dataset contains three data tables of which we think `sv_str_verz` is the most useful one as it contains the following properties (data rows):
- str_name
- snb_erlaeuterung
- snb_tafeltext_1

Direct links to access the `sv_str_verz` data table of Strassennamenverzeichnis:
- [whole Dataset as geojson](https://www.ogd.stadt-zuerich.ch/wfs/geoportal/Strassennamenverzeichnis?service=WFS&version=1.1.0&request=GetFeature&outputFormat=GeoJSON&typename=sv_str_verz)
- [Dataset reduced with the properties above as geojson](https://www.ogd.stadt-zuerich.ch/wfs/geoportal/Strassennamenverzeichnis?service=WFS&version=1.1.0&request=GetFeature&outputFormat=GeoJSON&typename=sv_str_verz&propertyname=str_name,snb_erlaeuterung,snb_tafeltext_1)

Strassennamenverzeichnis is published under [Creative Commons CCZero](https://opendefinition.org/licenses/cc-zero/) Licence

Out of the 2'542 official Streetnames of Zurich we identified around 600 Streets named after a person. A list of these streetnames will be added soon.

## Historisches Lexikon der Schweiz (HLS)
More about [HLS on Wikipedia](https://de.wikipedia.org/wiki/Historisches_Lexikon_der_Schweiz).

[HLS](https://hls-dhs-dss.ch) is published under [Creative Commons BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). See also Nutzungsbedingungen of HLS: [Urheberrechte und Verwendung der HLS-Inhalte](https://hls-dhs-dss.ch/de/about/usage#HUrheberrechteundVerwendungderHLS-Inhalte)

You may use HLS to add Information on Wikidata / Wikipedia and even create a Wikipedia-article entirely based on an HLS-article. 
:warning: If you do so, Cite all Informations! See section on How to.


# How to
The aim of this section is to provide a guideline on how to collect, store and link the required data so it can be used by equalstreetnames.

Basic steps are:
1. Identifiy a Street named after a Person
2. Find the according Wikidata-Entry of this Person
3. Add the Wikidata Identifier on Openstreetmap to the Street

See following sections to find out more about the work that can be done.

## Identify Streets named after a Person
As written in the Strassenverzeichnis Section of the Data Capter, around 600 Streets are named after a "person". The named streets can be categorised by:
* Named after a person with an existing Wikidata entry.
  * Example: [Else Züblin-Spiller](https://www.wikidata.org/wiki/Q1333744)

* Named after a person without a Wikidata entry. Usually citizens of Zurich. eg.:
  * Laura-Hezner-Weg
* Named after a historical person, not 100% sure if they exist. eg.:
  * Flobotstrasse
  * Woloweg
  * Wibichstrasse
* Named after a certain person's occupation, because they were working at this street eg.:
  * Eisengasse
  * Drehergasse
  * Feilengasse
* Named after a goddess. eg.:
  * Freyastrasse
  * Florastrasse
  * Fortunagasse

## Identify Wikidata entries of a person

### Basic Wikidata Entry
To make the map of equalstreetnames work, a wikidata entry needs following:
* `label` (in English)
* `description` (in English)

* Statements:
 * `instance of` (P31) = `human` (Q5)
 * `sex or gender` (P21) with following possible values:
  * `femal` (Q6581072)
  * `male` (Q6581097)

### Advanced Wikidata Entry
If you know more about a Person and you feel like to share this with Wikidata. Here some suggestions what you could add additionaly:
* `label` (in German)
* `description` (in German)

* Statements:
  * `image` (P18)
  * `date of birth` (P569)
  * `place of birth` (P19)
  * `date of death` (P570)
  * `place of death` (P20)
  * `commemorative plaque image` (P1801). Image of the Tafeltext of the Street. The Text should be according to snb_tafeltext_1 of Strassenverzeichnis. Example: [Ernst Nobs](https://www.wikidata.org/wiki/Q115561)

* Identifiers:
  * `HDS ID` (P902). Link to the HLS-article-Nr of this person. Example: [Annemarie Schwarzenbach](https://www.wikidata.org/wiki/Q123368)

### :warning: Declare Sources on Wikidata :warning:

If you add Information to Wikidata, don't forget to cite your source.

#### Information from Strassenverzeichnis
Adding Information from the Strassenverzeichnis to a Statement:
* click `add reference`
* choose:
  * `stated in` = `Street name directory Zurich` (Q27320908)
  * `retrieved` = Date of Day you entered the Information (Usualy Today)
* Example: `date of birth` of [Anna Häuptli](https://www.wikidata.org/wiki/Q27323074)

#### Information from HLS 
Adding Information from the HLS to a Statement
* click `add reference` 
* choose:
  * `stated in` = `Historical Dictionary of Switzerland` (Q642074)
  * `retrieved` = Date of Day you entered the Information (Usualy Today)
  * `reference URL` = URL to the article like https://hls-dhs-dss.ch/de/articles/009370/2012-09-11/
* Example: `place of birth` of [Erika Rikli](https://www.wikidata.org/wiki/Q96489752)

### Wikipedia article


### :warning: Declare Sources on Wikipedia :warning:


## Wikidata ID to Openstreetmap
To let the streets get coloured on equalstreetnames add the Wikidata ID of the person on [Openstreetmap](https://www.openstreetmap.org/) to the street-segment as an etymonology-Attribut.
* `name:etymology:wikidata=Q[....]` 
* Example: [Carl-Spitteler-Strasse](https://www.openstreetmap.org/way/15273002)

If there also exists an article on Wikipedia, even better! Use
* `name:etymology:wikipedia`
* Example: `name:etymology:wikipedia=de:Carl Spitteler` see [Carl-Spitteler-Strasse](https://www.openstreetmap.org/way/15273002)


# ToDo
- [ ] The official Strassenverzeichnis lists 2'542 named streets in Zürich. Equalstreetnames mentiones 2'472 named Streets. Why is there a difference?
- [ ] List of all ~600 Streetnames on Github.
- [ ] Ask [frauenstadtrundgangzuerich.ch](www.frauenstadtrundgangzuerich.ch) to use Videos of [Digital Stadtrundgänge](https://www.frauenstadtrundgangzuerich.ch/digitale-rundg%C3%A4nge) on Wikimedia
