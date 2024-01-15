require 'net/http'
require 'json'

url = 'https://api.tidesandcurrents.noaa.gov/api/prod/datagetter?date=today&station=9447265&product=predictions&datum=MLLW&time_zone=lst&interval=hilo&units=english&application=DataAPI_Sample&format=json'
uri = URI(url)
response = Net::HTTP.get(uri)
JSON.parse(response)
# Current speed at West Point - https://api.tidesandcurrents.noaa.gov/api/prod/datagetter?date=today&station=PUG1515_10&product=currents_predictions&time_zone=lst&interval=MAX_SLACK&units=english&application=DataAPI_Sample&format=xml&bin=1
# NOAA Tides API info - https://api.tidesandcurrents.noaa.gov/api/prod/
# Maybe try this gem for visuals https://www.ruby2d.com/
