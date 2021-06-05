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
