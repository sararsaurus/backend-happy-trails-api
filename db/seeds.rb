### CONDITIONS
# Condition.create!(trail_condition: "Muddy", temp: 44, forecast: "Sunny in the morning with afternoon thunderstorms", sunrise_time: 0700, sunset_time: 1845, trail_id: 1)

# Condition.create!(trail_condition: "Good condition", temp: 56, forecast: "Sunny all day", sunrise_time: 0600, sunset_time: 1945, trail_id: 2)

# Condition.create!(trail_condition: "Icy", temp: 18, forecast: "Overcast with a chance of snow", sunrise_time: 0730, sunset_time: 1645, trail_id: 3)

### FAST FACTS
# FastFact.create!(general: "Named after the Caribou Mountains in Alberta, Canada. This trail crosses the Continental Divide.", nearby_landmarks: "Lake Dorothy, Mount Neva, Mount Jasper, Diamond Lake", lake_info: "Elevation: 11,147 ft, Acres: 5.6, Depth: 8.2 ft, Fish: Cutthroat.", backcountry_zones: "Caribou, Neva", ecological_zones: "Subalpine, Alpine", trail_id: 1)

# FastFact.create!(general: "At 13,397 ft, it's one of IPW's seven 13ers. Nearby North Arapaho Peak is the highest in IPW and the Arapaho Glacier is the largest glacier in CO. The Fourth of July mine was so named because miners staked their claim there on Independence Day, 1872.", nearby_landmarks: "North Arapaho Peak, Arapaho Glacier, Fourth of July Mine", lake_info: "N/A", backcountry_zones: "Neva", ecological_zones: "Subalpine, Alpine", trail_id: 2)

# FastFact.create!(general: "Lone Eagle Peak's summit is at 11,946 ft.", nearby_landmarks: "The Chessmen", lake_info: "Elevation: 10,280 ft, Acres: 24.8, Depth: 78 ft, Fish: Brook, cutthroat.", backcountry_zones: "Cascade Creek, Crater Lake", ecological_zones: "Montane, Subalpine", trail_id: 3)

### HIKE SCHEDULES

# HikeSchedule.create!(trail_id: 1, user_id: 1, date: "06-01-2022")
# HikeSchedule.create!(trail_id: 2, user_id: 2, date: "22-01-2022")
# HikeSchedule.create!(trail_id: 3, user_id: 3, date: "27-01-2022")

### TRAILS
# Trail.create!(name: "Caribou Lake via Arapaho Pass Trail", description: "Out and back", length: 8.8, difficulty: "Moderate", image_url: "public/5635E15A-E79F-43FA-A0F8-DE8FFE07F272_1_105_c.jpeg")

# Trail.create!(name: "South Arapaho Peak", description: "Out and back", length: 13, difficulty: "Hard", image_url: "public/720EFAD9-987D-4257-B412-FE7CDB139CF7_1_105_c.jpeg")

# Trail.create!(name: "Crater Lake/Lone Eagle", description: "Out and back", length: 17, difficulty: "Moderate", image_url: "public/FD4D267A-8CE6-474F-90D2-B8C8936BBD58_1_105_c.jpeg")

### USERS
# User.create!(name: "Packy the Pika", email: "p@example.com", password: "password", image_url: "https://deseret.brightspotcdn.com/dims4/default/7f66b24/2147483647/strip/true/crop/1200x799+0+0/resize/1300x866!/format/webp/quality/90/?url=https%3A%2F%2Fcdn.vox-cdn.com%2Fthumbor%2Ff8Uf08ARd_MNb9JBN7nWCnMInZs%3D%2F0x0%3A1200x800%2F1200x800%2Ffilters%3Afocal%28600x400%3A601x401%29%2Fcdn.vox-cdn.com%2Fuploads%2Fchorus_asset%2Ffile%2F17954939%2F1740080.jpg")

# User.create!(name: "Screech the Marmot", email: "m@example.com", password: "password", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhv4XlaHH3x-fekrC77ijAZA6WrwAnp0oGWA&usqp=CAU")

# User.create!(name: "Hops the Mountain Goat", email: "g@example.com", password: "password", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRA5P1wgcEmEFdSzhwTyqI9Ddb9FMeZTx7Ig&usqp=CAU")
