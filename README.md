WU_weather_list
===============

Lista delle stazioni meteo amatoriali italiane


E' facile dopo l'iscrizione al servizio Wunderground.com

http://www.wunderground.com/weather/api/
http://www.wunderground.com/weather/api/d/docs

prendersi una key API per developer da sostituire.... per json o xml

```php

<?php 
 $json_string = file_get_contents("http://api.wunderground.com/api/"key"/conditions/q/pws:IPISTOIA4.json"); 
 $parsed_json = json_decode($json_string); 
 $location = $parsed_json->{'location'}->{'city'}; 
 $temp_f = $parsed_json->{'current_observation'}->{'temp_f'};
 echo "Current temperature in ${location} is: ${temp_f}\n"; 
 ?>

```

e avere ad esempio per campotizzoro PIstoia questo .....


```js
{
  "response": {
  "version":"0.1",
  "termsofService":"http://www.wunderground.com/weather/api/d/terms.html",
  "features": {
  "conditions": 1
  }
	}
  ,	"current_observation": {
		"image": {
		"url":"http://icons.wxug.com/graphics/wu2/logo_130x80.png",
		"title":"Weather Underground",
		"link":"http://www.wunderground.com"
		},
		"display_location": {
		"full":"San Marcello Pistoiese, Italy",
		"city":"San Marcello Pistoiese",
		"state":"",
		"state_name":"Italy",
		"country":"IY",
		"country_iso3166":"IT",
		"zip":"00000",
		"magic":"23",
		"wmo":"16136",
		"latitude":"44.039806",
		"longitude":"10.876972",
		"elevation":"629.00000000"
		},
		"observation_location": {
		"full":"Campotizzoro, PISTOIA",
		"city":"Campotizzoro",
		"state":"PISTOIA",
		"country":"ITALY",
		"country_iso3166":"IT",
		"latitude":"44.039806",
		"longitude":"10.876972",
		"elevation":"2395 ft"
		},
		"estimated": {
		},
		"station_id":"IPISTOIA4",
		"observation_time":"Last Updated on December 22, 2:06 PM CET",
		"observation_time_rfc822":"Mon, 22 Dec 2014 14:06:58 +0100",
		"observation_epoch":"1419253618",
		"local_time_rfc822":"Mon, 22 Dec 2014 14:06:58 +0100",
		"local_epoch":"1419253618",
		"local_tz_short":"CET",
		"local_tz_long":"Europe/Rome",
		"local_tz_offset":"+0100",
		"weather":"Mostly Cloudy",
		"temperature_string":"48.6 F (9.2 C)",
		"temp_f":48.6,
		"temp_c":9.2,
		"relative_humidity":"70%",
		"wind_string":"From the East at 4.6 MPH Gusting to 4.6 MPH",
		"wind_dir":"East",
		"wind_degrees":92,
		"wind_mph":4.6,
		"wind_gust_mph":"4.6",
		"wind_kph":7.4,
		"wind_gust_kph":"7.4",
		"pressure_mb":"1030.4",
		"pressure_in":"30.43",
		"pressure_trend":"-",
		"dewpoint_string":"39 F (4 C)",
		"dewpoint_f":39,
		"dewpoint_c":4,
		"heat_index_string":"NA",
		"heat_index_f":"NA",
		"heat_index_c":"NA",
		"windchill_string":"47 F (8 C)",
		"windchill_f":"47",
		"windchill_c":"8",
		"feelslike_string":"47 F (8 C)",
		"feelslike_f":"47",
		"feelslike_c":"8",
		"visibility_mi":"",
		"visibility_km":"",
		"solarradiation":"--",
		"UV":"--","precip_1hr_string":"0.00 in ( 0 mm)",
		"precip_1hr_in":"0.00",
		"precip_1hr_metric":" 0",
		"precip_today_string":"0.00 in (0 mm)",
		"precip_today_in":"0.00",
		"precip_today_metric":"0",
		"icon":"mostlycloudy",
		"icon_url":"http://icons.wxug.com/i/c/k/mostlycloudy.gif",
		"forecast_url":"http://www.wunderground.com/global/stations/16136.html",
		"history_url":"http://www.wunderground.com/weatherstation/WXDailyHistory.asp?ID=IPISTOIA4",
		"ob_url":"http://www.wunderground.com/cgi-bin/findweather/getForecast?query=44.039806,10.876972",
		"nowcast":""
	}
}

```
