# marinereport.rb
require 'sinatra'
require 'net/http'
require 'json'

url = 'https://api.tidesandcurrents.noaa.gov/api/prod/datagetter?date=today&station=9447265&product=predictions&datum=MLLW&time_zone=lst&interval=hilo&units=english&application=DataAPI_Sample&format=json'
uri = URI(url)
response = Net::HTTP.get(uri)
conditions = JSON.parse(response)

get '/' do
  conditions.to_s
end
