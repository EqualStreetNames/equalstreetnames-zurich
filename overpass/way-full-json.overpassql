[out:json][timeout:300];
( area["admin_level"=""]["wikidata"="Q72"]; )->.a;
(
    way["highway"]["name"]["highway"!="bus_stop"]["highway"!="elevator"]["highway"!="platform"](area.a);
    way["place"="square"]["name"](area.a);
    way["leisure"="park"]["name"](area.a);
);
out body;
>;
out skel qt;
