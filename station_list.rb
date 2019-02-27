require './station'

@asiaworld_expo = Station.new("AsiaWorld Expo", ["Airport"])
@airport = Station.new("Airport", ["AsiaWorld Expo", "Sunny Bay"])
@sunny_bay = Station.new("Sunny Bay", ["Airport", "Tung Chung", "Tsing Yi", "Disneyland Resort"])
@tung_chung = Station.new("Tung Chung", ["Sunny Bay"])
@disneyland_resort = Station.new("Disneyland Resort", ["Sunny Bay"])
@tsing_yi = Station.new("Tsing Yi", ["Sunny Bay", "Lai King"])
@lai_king = Station.new("Lai King", ["Tsing Yi", "Kwai Fong", "Mei Foo", "Nam Cheong"])
#@nam_cheong = Station.new("Nam Cheong", ["Mei Foo", "Lai King", "Olympic", "Austin"])
@nam_cheong = Station.new("Nam Cheong", ["Mei Foo", "Lai King"])
@olympic = Station.new("Olympic", ["Nam Cheong", "Kowloon"])
@kowloon = Station.new("Kowloon", ["Olympic", "Hong Kong"])
@hong_kong = Station.new("Hong Kong", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])

# purple line
@mei_foo = Station.new("Mei Foo", ["Lai King", "Tsuen Wan West", "Nam Cheong"])
@tsuen_wan_west = Station.new("Tsuen Wan West", ["Mei Foo", "Kam Sheung Road"])
@kam_sheung_road = Station.new("Kam Sheung Road", ["Tsuen Wan West", "Yeun Long"])
@yuen_long = Station.new("Yeun Long", ["Kam Sheung Road", "Long Ping"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])

@stations_arr = [
  @asiaworld_expo,
  @airport,
  @sunny_bay,
  @tung_chung,
  @disneyland_resort,
  @tsing_yi,
  @lai_king,
  @nam_cheong,
  @tsuen_wan_west,
  @kam_sheung_road,
  @yuen_long,
  @mei_foo
]
