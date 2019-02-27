require './station'

@asiaworld_expo = Station.new("AsiaWorld Expo", ["Airport"])
@airport = Station.new("Airport", ["AsiaWorld Expo", "Sunny Bay"])
@sunny_bay = Station.new("Sunny Bay", ["Airport", "Tung Chung", "Tsing Yi", "Disneyland Resort"])
@tung_chung = Station.new("Tung Chung", ["Sunny Bay"])
@disneyland_resort = Station.new("Disneyland Resort", ["Sunny Bay"])
@tsing_yi = Station.new("Tsing Yi", ["Sunny Bay", "Lai King"])
@lai_king = Station.new("Lai King", ["Tsing Yi", "Kwai Fong", "Mei Foo", "Nam Cheong"])
@olympic = Station.new("Olympic", ["Nam Cheong", "Kowloon"])
@kowloon = Station.new("Kowloon", ["Olympic", "Hong Kong"])
@hong_kong = Station.new("Hong Kong", ["Kowloon"])
#@kowloon = Station.new("Kowloon", ["Kowloon"])

# purple line
@mei_foo = Station.new("Mei Foo", ["Lai King", "Tsuen Wan West", "Nam Cheong"])
@nam_cheong = Station.new("Nam Cheong", ["Mei Foo", "Lai King", "Olympic", "Austin"])
@tsuen_wan_west = Station.new("Tsuen Wan West", ["Mei Foo", "Kam Sheung Road"])
@kam_sheung_road = Station.new("Kam Sheung Road", ["Tsuen Wan West", "Yeun Long"])
@yuen_long = Station.new("Yeun Long", ["Kam Sheung Road", "Long Ping"])
@long_ping = Station.new("Long Ping", ["Yuen Long", "Tin Shui Wai"])
@tin_shui_wai = Station.new("Tin Shui Wai", ["Long Ping", "Siu Hong"])
@siu_hong = Station.new("Siu Hong", ["Tin Shui Wai", "Tuen Mun"])
@tuen_mun = Station.new("Tuen Mun", ["Siu Hong"])
@austin = Station.new("Austin", ["Nam Cheong", "East Tsim Sha Tsui"])
@east_tsim_sha_tsui = Station.new("East Tsim Sha Tsui", ["Austin", "Hung Hom"])

# red line

@tsuen_wan = Station.new("Tsuen Wan", ["Tai Wo Hau"])
@tai_wo_hau = Station.new("Tai Wo Hau", ["Tsuen Wan", "Kwai Hing"])
@kwai_hing = Station.new("Kwai Hing", ["Tai Wo Hau", "Kwai Fong"])
@kwai_fong = Station.new("Kwai Fong", ["Kwai Hing", "Lai King"])
@lai_chi_kok = Station.new("Lai Chi Kok", ["Mei Foo", "Cheung Sha Wan"])
@cheung_sha_wan = Station.new("Cheung Sha Wan", ["Lai Chi Kok", "Sham Shui Po"])
@sham_shui_po = Station.new("Sham Shui Po", ["Cheung Sha Wan", "Prince Edward"])
@prince_edward = Station.new("Prince Edward", ["Sham Shui Po", "Mong Kok"])
@mong_kok = Station.new("Mong Kok", ["Prince Edward", "Yau Ma Tei"])
@yau_ma_tei = Station.new("Yau Ma Tei", ["Mong Kok", "Jordan"])
@jordan = Station.new("Jordan", ["Yau Ma Tei", "Tsim Sha Tsui"])
@tsim_sha_tsui = Station.new("Tsim Sha Tsui", ["Jordan", "Admiralty"])
@admiralty = Station.new("Admiralty", ["Tsim Sha Tsui", "Central"])
@central = Station.new("Central", ["Admiralty"])

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
  @mei_foo,
  @olympic,
  @kowloon,
  @hong_kong,
  @nam_cheong,
  @kam_sheung_road,
  @yuen_long,
  @long_ping,
  @tin_shui_wai,
  @siu_hong,
  @tuen_mun,
  @austin,
  @east_tsim_sha_tsui,
  @tsuen_wan,
  @tai_wo_hau,
  @kwai_hing,
  @kwai_fong,
  @lai_chi_kok,
  @cheung_sha_wan,
  @sham_shui_po,
  @prince_edward,
  @mong_kok,
  @yau_ma_tei,
  @jordan,
  @tsim_sha_tsui,
  @admiralty,
  @central
]
