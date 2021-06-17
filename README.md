# :blue_heart: Welcome to EqualStreetNames Zurich :blue_heart:
## :blue_heart: :white_circle: :blue_heart: :white_circle: :blue_heart: Sali bi EqualStreetNames Züri :blue_heart: :white_circle: :blue_heart: :white_circle: :blue_heart:

## Data
We use the official [Strassennamenverzeichnis](https://data.stadt-zuerich.ch/dataset/geo_strassennamenverzeichnis) of the [City of Zurich Open Data Portal](https://www.stadt-zuerich.ch/opendata) to figure out to what streets of the City of Zurich are named after.
This Dataset contains three Datatables of whom we think `sv_str_verz` is the most usefull one as it contains following properties (datarows):
- str_name
- snb_erlaeuterung
- snb_tafeltext_1

Direct links to access the `sv_str_verz` Datatable of Strassennamenverzeichnis:
- [whole Dataset as geojson](https://www.ogd.stadt-zuerich.ch/wfs/geoportal/Strassennamenverzeichnis?service=WFS&version=1.1.0&request=GetFeature&outputFormat=GeoJSON&typename=sv_str_verz)
- [Dataset reduced with the properties above as geojson](https://www.ogd.stadt-zuerich.ch/wfs/geoportal/Strassennamenverzeichnis?service=WFS&version=1.1.0&request=GetFeature&outputFormat=GeoJSON&typename=sv_str_verz&propertyname=str_name,snb_erlaeuterung,snb_tafeltext_1)

Strassennamenverzeichnis is published under [Creative Commons CCZero](https://opendefinition.org/licenses/cc-zero/) Licence


Out of the 2'542 official Streetnames of Zürich we identified around 600 Streets named after a Person. A List of this Streetnames is following.


## How to
This capter should provide a guideline on how to collect, store and link all the datas so they can be used by equalstreetnames

### Identify named Streets
As written above, around 600 Streets are named after a "Person". The named Streets can be categorised by:
* Named after a Person with fully featured Wikidata Entry exists. eg.:
  * [Else Züblin-Spiller](https://www.wikidata.org/wiki/Q1333744)
* Named after a Person without a Wikidata Entry. Usualy zurich citizens. eg.:
  * Algierstrasse
* Named after a certain Persons occupation, because they were working at this street. eg.:
  * Eisengasse
  * Drehergasse
  * Feilengasse
* Named after a Goddess. eg.:
  * Freyastrasse
  * Florastrasse
  * Fortunagasse
* Named after a hisorical Person, not 100% sure be existing. eg.:
  * Flobotstrasse
  * Woloweg
  * Wibichstrasse

### Create "fully featured" Wikidata Entrys of a Person
A fully featured Wikidata Entry (in Terms of equalstreetnames.zurich) contains a 
* ```Label```
* ```Description```
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
* ```Label``` and ```Description``` in German
* Properties
  * ```commemorative plaque image``` (P1801). Image of the Tafeltext of the Street. See snb_tafeltext_1 of Strassenverzeichnis.

:warning: Declare Sources :warning:

If you add Informations to Wikidata don't forget to quote your source.

Adding Information from the Strassenverzeichnis to a Statement:
* click ```add reference``` 
* choose ```stated in``` = ```Street name directory Zurich``` (Q27320908).
* Example: ```date of birth``` of [Anna Häuptli](https://www.wikidata.org/wiki/Q27323074).

### Wikidata ID to Openstreetmap
To let the street get colored on equalstreetname add the Wikidata ID to the street-segment on openstreetmap.
Use ```name:etymology:wikidata=Q[....]``` see [Carl-Spitteler-Strasse](https://www.openstreetmap.org/way/15273002) as an Exampel. If there exist also an Article on Wikipedia even better! Use ```name:etymology:wikipedia```. In the Example of Carl-Spitteler -Strasse this will be: ```name:etymology:wikipedia=de:Carl Spitteler```


## ToDo
- [ ] The official Strassenverzeichnis lists 2'542 named Streets in Zürich. Equalstreetnames mentiones 2'472 named Streets. Why is there a difference?
- [ ] List of all ~600 Streetnames on Github.
