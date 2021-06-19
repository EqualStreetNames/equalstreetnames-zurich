# :blue_heart: Welcome to EqualStreetNames Zurich :blue_heart:
## :blue_heart: :white_circle: :blue_heart: :white_circle: :blue_heart: Sali bi EqualStreetNames Züri :blue_heart: :white_circle: :blue_heart: :white_circle: :blue_heart:

## Data
We use the official [Strassennamenverzeichnis](https://data.stadt-zuerich.ch/dataset/geo_strassennamenverzeichnis) of the [City of Zurich Open Data Portal](https://www.stadt-zuerich.ch/opendata) to figure out who the streets of the City of Zurich are named after.
This dataset contains three data tables of which we think `sv_str_verz` is the most useful one as it contains the following properties (data rows):
- str_name
- snb_erlaeuterung
- snb_tafeltext_1

Direct links to access the `sv_str_verz` data table of Strassennamenverzeichnis:
- [whole Dataset as geojson](https://www.ogd.stadt-zuerich.ch/wfs/geoportal/Strassennamenverzeichnis?service=WFS&version=1.1.0&request=GetFeature&outputFormat=GeoJSON&typename=sv_str_verz)
- [Dataset reduced with the properties above as geojson](https://www.ogd.stadt-zuerich.ch/wfs/geoportal/Strassennamenverzeichnis?service=WFS&version=1.1.0&request=GetFeature&outputFormat=GeoJSON&typename=sv_str_verz&propertyname=str_name,snb_erlaeuterung,snb_tafeltext_1)

Strassennamenverzeichnis is published under [Creative Commons CCZero](https://opendefinition.org/licenses/cc-zero/) Licence


Out of the 2'542 official Streetnames of Zurich we identified around 600 Streets named after a person. A list of these street names will be added soon.


## How to
The aim of this capter is to provide a guideline on how to collect, store and link the required data so it can be used by equalstreetnames

### Identify named Streets
As written above, around 600 Streets are named after a "person". The named streets can be categorised by:
* Named after a person with fully featured Wikidata entry exists. eg.:
  * [Else Züblin-Spiller](https://www.wikidata.org/wiki/Q1333744)

* Named after a person without a Wikidata entry. Usually citizens of Zurich. eg.:
  * Laura-Hezner-Weg
* Named after a certain person's occupation, because they were working at this street eg.:
  * Eisengasse
  * Drehergasse
  * Feilengasse
* Named after a goddess. eg.:
  * Freyastrasse
  * Florastrasse
  * Fortunagasse
* Named after a historical person, not 100% sure if they exist. eg.:
  * Flobotstrasse
  * Woloweg
  * Wibichstrasse


### Create "fully featured" Wikidata entries of a person
A fully featured Wikidata Entry (in terms of equalstreetnames.zurich) contains a 
* ```label```
* ```description```
in English.

Properties:
* ```instance of``` (P31) = ```human``` (Q5)
* ```Image``` (P18)
* ```sex or gender``` (P21)
* ```date of birth``` (P569)
* ```date of death``` (P570)

Identifiers:
* ```HDS ID``` (P902)

Additional "nice to have":
* ```label``` and ```description``` in German
* properties
  * ```commemorative plaque image``` (P1801). Image of the Tafeltext of the Street. See snb_tafeltext_1 of Strassenverzeichnis. Example: [Ernst Nobs](https://www.wikidata.org/wiki/Q115561)

:warning: Declare Sources :warning:

If you add Information to Wikidata, don't forget to quote your source.

Adding Information from the Strassenverzeichnis to a Statement:
* click ```add reference``` 
* choose ```stated in``` = ```Street name directory Zurich``` (Q27320908).
* Example: ```date of birth``` of [Anna Häuptli](https://www.wikidata.org/wiki/Q27323074).

### Wikidata ID to Openstreetmap
To let the streets get coloured on equalstreetnames add the Wikidata ID of the person on [Openstreetmap](https://www.openstreetmap.org/) to the street-segment as an etymonology-Attribut.
* ```name:etymology:wikidata=Q[....]``` 
* Example: [Carl-Spitteler-Strasse](https://www.openstreetmap.org/way/15273002)

If there also exists an article on Wikipedia, even better! Use
* ```name:etymology:wikipedia```
* Example: ```name:etymology:wikipedia=de:Carl Spitteler``` see [Carl-Spitteler-Strasse](https://www.openstreetmap.org/way/15273002)


## ToDo
- [ ] The official Strassenverzeichnis lists 2'542 named streets in Zürich. Equalstreetnames mentiones 2'472 named Streets. Why is there a difference?
- [ ] List of all ~600 Streetnames on Github.
