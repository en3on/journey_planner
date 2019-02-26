require './station'

#@asia_world_expo = Station.new("Asia World Expo", ["Airport Express"])

@airport = Station.new("Airport", ["Airport Express"], ["Airport Express", "Tung Chung", "Disneyland Resort", "Tsuen Wan"])

#@tung_chung = Station.new("Tung Chung", ["Tung Chung"])

#@sunny_bay = Station.new("Sunny Bay", ["Airport Express", "Tung Chong", "Disneyland Resort"])

#@disneyland_resort = Station.new("Disneyland Resort", ["Disneyland Resort"])

#@tsing_yi = Station.new("Tsing Yi", ["Airport Express", "Tung Chong"])

@lai_king = Station.new("Lai King", ["Airport Express", "Tung Chong", "Tsuen Wan"], ["Airport Express", "Tung Chong", "Tsuen Wan", "Tseung Kwan"])

#@tsuen_wan = Station.new("Tsuen Wan", ["Tsuen Wan"])

#@tai_wo_hau = Station.new("Tai Wo Hau", ["Tsuen Wan"])

#@kwai_hing = Station.new("Kwai Hing", ["Tsuen Wan"])

@mei_foo = Station.new("Mei Foo", ["Tsuen Wan", "Tseung Kwan"])

#@lei_chi_kok = Station.new("Lei Chi Kok", ["Tsuen Wan"])

#@cheung_sha_wan = Station.new("Cheung Sha Wan", ["Tsuen Wan"])

#@sham_shui_po = Station.new("Sham Shui Po", ["Tsuen Wan"])

#@prince_edwards = Station.new("Prince Edwards", ["Tsuen Wan", "Kwun Tong"])

#@mong_kok = Station.new("Mong Kok", ["Tsuen Wan", "Kwun Tong"])

#@yau_ma_tei = Station.new("Yau Ma Tei", ["Tsuen Wan", "Kwun Tong"])

#@jordan = Station.new("Jordan", ["Tsuen Wan", "Kwun Tong"])

@tsuen_wan_west = Station.new("Tsuen Wan West", ["Tseung Kwan"], ["Tsuen Wan", "Tseung Kwan"])
# 
# asia_world_expo = Station.new("Asia World Expo", ["Airport Express"])
# 
# asia_world_expo = Station.new("Asia World Expo", ["Airport Express"])
# 
#@stations_arr = [@asia_world_expo, @airport, @tung_chung, @sunny_bay, @disneyland_resort, @tsing_yi, @lai_king, @tsuen_wan, @tai_wo_hau, @kwai_hing, @lai_king,
                 #@tsuen_wan, @tai_wo_hau, @kwai_hing, @mei_foo, @lei_chi_kok, @cheung_sha_wan, @sham_shui_po, @prince_edwards, @mong_kok, @yau_ma_tei, @jordan, @tsuen_wan_west]

@stations_arr = [@airport, @lai_king, @mei_foo, @tsuen_wan_west]
