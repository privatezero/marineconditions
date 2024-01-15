require 'net/http'
require 'json'

url = 'https://api.tidesandcurrents.noaa.gov/api/prod/datagetter?date=today&station=9447130&product=predictions&datum=MLLW&time_zone=lst&interval=hilo&units=english&application=DataAPI_Sample&format=json'
uri = URI(url)
response = Net::HTTP.get(uri)
JSON.parse(response)
# NOAA Tides API info - https://api.tidesandcurrents.noaa.gov/api/prod/
