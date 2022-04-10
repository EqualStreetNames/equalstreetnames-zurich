# :blue_heart: Welcome to EqualStreetNames Zurich :blue_heart:
:blue_heart: :white_heart: :blue_heart: :white_heart: :blue_heart: Sali bi EqualStreetNames Züri :blue_heart: :white_heart: :blue_heart: :white_heart: :blue_heart:

Follow us on Twitter: https://twitter.com/equalsnzueri

We use this readme to document all used data and to provide a guideline on how to link this data for equalstreetnames

# How to
The aim of this section is to provide a guideline on how to collect, store and link the required data so it can be used by equalstreetnames.

Basic steps are:
1. Identifiy a Street named after a Person
2. Find the Wikidata-Item of this street
3. Find the Wikidata-Item of the Person
4. Link the Street-Wikidata-Item with the Person-Wikidata-Item

Use following Spreadsheet to get working:
[Workinglist](https://docs.google.com/spreadsheets/d/1ONbDBkYPxVkZ0lsC-Cm07OYaQsixLnNraNKnyIv4tWo/edit?usp=sharing)
* Finaly all streets in the Workinglist should have a Value in Column D.
* The Spreadsheet is autoupdating after some seconds when opening.
* A Street is missing? please create an Issue.

See following sections to find out more about the work that can be done.

## Identify Streets named after a Person
1. Find a Street in the [Workinglist](https://docs.google.com/spreadsheets/d/1ONbDBkYPxVkZ0lsC-Cm07OYaQsixLnNraNKnyIv4tWo/edit?usp=sharing) (Column B) which is not allready link to a Person (Column D).


## Find the Wikidata-Item of this street
* Search at [Wikidata.org](https://www.wikidata.org)
* Or: Take the Q-Nummer of the Street from Column A of the [Workinglist](https://docs.google.com/spreadsheets/d/1ONbDBkYPxVkZ0lsC-Cm07OYaQsixLnNraNKnyIv4tWo/edit?usp=sharing) and search for this at [Wikidata.org](https://www.wikidata.org)

Example: [Emilie-Kempin-Spyri-Weg](https://www.wikidata.org/wiki/Q27329833)

## Find the Wikidata-Item of the Person
This is the most tricky Part..
1. Read at Column G of the [Workinglist](https://docs.google.com/spreadsheets/d/1ONbDBkYPxVkZ0lsC-Cm07OYaQsixLnNraNKnyIv4tWo/edit?usp=sharing) an try to find out more about the Person
1. Or: search for the Street at [Strassennamen-Datenbank der Stadt Zürich](https://stadt-zuerich.ch/strassennamen-datenbank)
2. Search at [Wikidata.org](https://www.wikidata.org) for this Person.
3. Note the Q-Number of the Person

Example: Q119636 for [Emilie Kempin-Spyri](https://www.wikidata.org/wiki/Q119636)

## Link the Street-Wikidata-Item with the Person-Wikidata-Item
1. Return to the Wikidata-Entry of the Street
2. Click "add statement" (At the End of all Statements)
3. Choose as Property: "named after"
4. Add as the Value the Q-Number of the Person and choose the Name as the value
5. Click "add reference"
6. Choose as Property: "stated in" and as value "Street name directory Zurich"
7. Click "add" (to add an additional reference)
8. Choose as Property: "retrieved" and as value the Date of Today eg. "13.05.2006"
9. Click "publish"

Done :muscle:

# Advanced Section

## Identify Wikidata entries of a person
The named streets can be categorised by:
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

## Add Information to Wikidata
### Basic Wikidata Entry
To make the map of equalstreetnames work, a wikidata entry needs following:
* `label` (in English)
* `description` (in English)
* Statements:
  * `instance of` (P31) = `human` (Q5)
  * `sex or gender` (P21) with following possible values according to Propertydefinition:
    * `femal` (Q6581072)
    * `intersex` (Q1097630)
    * `male` (Q6581097)
    * `transgender female` (Q1052281)
    * `transgender male` (Q2449503)

### Advanced Wikidata Entry
If you know more about a Person and you feel like to share this with Wikidata. Here are some suggestions what you could add additionaly:
* `label` (in German)
* `description` (in German)
* Statements:
  * `image` (P18)
  * `date of birth` (P569)
  * `place of birth` (P19)
  * `date of death` (P570)
  * `place of death` (P20)
  * `commemorative plaque image` (P1801). Image of the Tafeltext of the Street. The Text should be according to snb_tafeltext_1 of Strassenverzeichnis. Check [Wikimedia Category "Street_signs_in_Zürich"](https://commons.wikimedia.org/wiki/Category:Street_signs_in_Z%C3%BCrich). Example: [Ernst Nobs](https://www.wikidata.org/wiki/Q115561)
* Identifiers:
  * `HDS ID` (P902). Link to the HLS-article-Nr of this person. Example: [Annemarie Schwarzenbach](https://www.wikidata.org/wiki/Q123368)

### :warning: Declare Sources on Wikidata :warning:

If you add Information to Wikidata, don't forget to cite your source.

#### Information from Strassenverzeichnis to Wikidata
Adding Information from the Strassenverzeichnis to a Statement:
* click `add reference`
* choose:
  * `stated in` = `Street name directory Zurich` (Q27320908)
  * `retrieved` = Date of Day you entered the Information (Usualy Today)
* Example: `date of birth` of [Anna Häuptli](https://www.wikidata.org/wiki/Q27323074)

#### Information from HLS to Wikidata
Adding Information from the HLS to a Statement
* click `add reference` 
* choose:
  * `stated in` = `Historical Dictionary of Switzerland` (Q642074)
  * `retrieved` = Date of Day you entered the Information (Usualy Today)
  * `reference URL` = URL to the article like https://hls-dhs-dss.ch/de/articles/009370/2012-09-11/
* Example: `place of birth` of [Erika Rikli](https://www.wikidata.org/wiki/Q96489752)

### Wikipedia article

If there is no existing Wikipedia Articel, the "Historische Lexikon der Schweiz (HLS)" alows to copy there complete Inofmration to Wikipedia. See: [Nutzungshinweise](https://hls-dhs-dss.ch/de/about/usage)

### :warning: Declare Sources on Wikipedia :warning:

If you add Information to Wikipedia, don't forget to cite your source.
* If you create an Article completly baed on HLS add `{{HLS-Text|202356100}}` or even better `{{HLS-Text|Artikel=026515/2011-12-28|Version=190573009|Autor=Stefanie Spirig-Bülte}}` according [Vorlage:HLS-Text](https://de.wikipedia.org/wiki/Vorlage:HLS-Text)
* If only some Texts are form HLS, add a Weblink according [Vorlage:HLS](https://de.wikipedia.org/wiki/Vorlage:HLS)

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

# Data Quality
Checkout following Projects which check Data used by zurich.equalstreetnames.eu: 
- [equalstreetnames-zurich-todo](https://github.com/metaodi/equalstreetnames-zurich-todo)
- [equalstreetnames-zurich-QS](https://github.com/CaptainInler/equalstreetnames-zurich-QS)

# ToDo
- [x] The official Strassenverzeichnis lists 2'542 named streets in Zürich. Equalstreetnames mentiones 2'472 named Streets. Why is there a difference?
- [ ] List of all ~600 Streetnames on Github.
- [x] Ask [frauenstadtrundgangzuerich.ch](www.frauenstadtrundgangzuerich.ch) to use Videos of [Digital Stadtrundgänge](https://www.frauenstadtrundgangzuerich.ch/digitale-rundg%C3%A4nge) on Wikimedia
