
admin1 = User.create!(username: "Louis", email: "louis@louis.com", password: "password", password_confirmation: "password", rank: "admin", image: "http://fillmurray.com/300/300")
user1 = User.create!(username: "John", email: "john@john.com", password: "password", password_confirmation: "password", rank: "standard", image: "http://fillmurray.com/300/300")

caseType = Parttype.create!(parttype: "case", description: "Tower Case")
moboType = Parttype.create!(parttype: "mobo", description: "Motherboard")
cpuType = Parttype.create!(parttype: "cpu", description: "Central Processing Unit")
gpuType = Parttype.create!(parttype: "gpu", description: "Graphics Card")
ramType = Parttype.create!(parttype: "ram", description: "Random Access Memory")
driveType = Parttype.create!(parttype: "drive", description: "Drive")
drive2Type = Parttype.create!(parttype: "drive2", description: "Second Drive")
psuType = Parttype.create!(parttype: "psu", description: "Power supply unit")
coolerType = Parttype.create!(parttype: "cooler", description: "CPU Cooler")
nicType = Parttype.create!(parttype: "nic", description: "Network Card")
oddType = Parttype.create!(parttype: "odd", description: "Optical Disk Drive")


case1 = Part.create!(name: "Phanteks Eclipse P400 Tempered grey", description: "Tempered glass panel", price: 75, spec: "ATX,6x 3.5\",2x 2.5\",2x USB 3.0,2x 120mm fan,PSU not included,transparent side panel,grey", image: "https://m.media-amazon.com/images/S/aplus-media/vc/23deaacd-2aa7-4079-ac33-3e912a6e00fc._SR300,300_.jpeg")
case2 = Part.create!(name: "Vultech CUBE-X1B White", description: "Small and sturdy", price: 32, spec: "Plexiglass,Stainless steel,Top,1x 120 mm,Micro-ATX,Mini-ATX", image: "http://www.informaticab2b.it/files/Foto/208246_1.JPG")
case3 = Part.create!(name: "Coolermaster Cosmos 2 Ultra Ultimate", description: "Massive", price: 305, spec: "SSI-EEB,EATX,ATX,USB3.0,Many fans,Such drives,So space", image: "http://i.ebayimg.com/00/s/NjUwWDY1MA==/z/f4cAAOSwuxFYtEnV/$_35.JPG?set_id=880000500F")

mobo1 = Part.create!(name: "GA970A-DS3P AMD", description: "Gigabyte AM3+ motherboard", price: 60, spec: "AM3+,DDR3 non-ecc,No onboard graphics", image: "https://www.allstarshop.com/shop/assets/product_images/80058024c.jpg")
mobo2 = Part.create!(name: "MSI X99A SLI ATX Intel", description: "MSI LGA2011-v3 high end motherboard", price: 220, spec: "LGA2011-v3,DDR4 non-ecc,No onboard graphics", image: "http://i.ebayimg.com/images/g/2EUAAOSwTglYkTpt/s-l300.jpg")
mobo3 = Part.create!(name: "ROG Strix Z270E Gaming Intel", description: "ROG Strix Intel high end gaming motherboard", price: 190, spec: "FCLGA1151,DDR4 non-ecc,No onboard graphics", image: "http://i.ebayimg.com/images/g/Q6QAAOSwUKxYjAxV/s-l300.jpg")
mobo4 = Part.create!(name: "ASUS ROG RAMPAGE V EDITION 10 Intel", description: "ASUS ROG Top end motherboard", price: 500, spec: "LGA2011-v3,DDR4 ECC supported,No onboard graphics", image: "http://i.ebayimg.com/images/g/yswAAOSwUKxYdNjU/s-l300.jpg")
mobo5 = Part.create!(name: "MSI X99A GODLIKE Intel", description: "MSI High end motherboard", price: 450, spec: "LGA2011-v3,DDR4 non-ecc,No onboard graphics", image: "http://i.ebayimg.com/images/g/-7oAAOSw4CFYuaHe/s-l300.jpg")

cpu1 = Part.create!(name: "AMD FX6300", description: "AMD mid-tier six core cpu", price: 72, spec: "Cores: 6,Clock speed: 3.5GHz,AM3+ socket", image: "https://www.dateks.lv/images/pic/300/300/132/51.jpg")
cpu6 = Part.create!(name: "AMD FX8370", description: "AMD Piledriver 8 core cpu", price: 72, spec: "Cores: 8,Clock speed: 4.3GHz,AM3+ socket", image: "http://i.ebayimg.com/images/g/cvkAAOSwXYtY0Iuj/s-l300.jpg")
cpu2 = Part.create!(name: "Intel Core i7-5960X", description: "Intel maxed out Extreme Edition 8c/16t cpu", price: 1200, spec: "Cores: 8,Threads: 16,Clock speed: 3.0 to 3.5GHz ,LGA2011-v3 socket", image: "http://i.ebayimg.com/00/s/MTAwMFgxMDAw/z/W6cAAOSwDuJW0vZi/$_35.JPG?set_id=89040003C1")
cpu3 = Part.create!(name: "Intel Core i7-7700K", description: "7th gen 4c/8t desperate for cash", price: 305, spec: "Cores: 4,Threads: 8,Clock speed: 4.2 to 4.5GHz,FCLGA1151 socket", image: "https://images-na.ssl-images-amazon.com/images/I/51QYjUBfl6L._SY300_.jpg")
cpu4 = Part.create!(name: "Intel Xeon E5-4669V3", description: "Among the best multicore cpus ever released to date, server grade, adapted for enthusiasts", price: 7000, spec: "Cores: 18,Threads: 36,Clock speed: 2.1 to 2.9GHz,LGA2011-v3 socket,40 pci-e lanes", image: "https://cdn.shopify.com/s/files/1/1613/5703/products/V3-4669V3_large.jpg?v=1480244139")
cpu5 = Part.create!(name: "Intel Core i7 6800K", description: "High end Intel consumer CPU", price: 440, spec: "Cores: 6,Threads: 12,Clock speed: 3.4 to 3.6GHz,LGA2011-v3 socket,28 pci-e lanes", image: "https://www.pckuwait.com/wp-content/uploads/2016/07/300-1-3.jpg")

ram1 = Part.create!(name: "Corsair HyperX DDR3 2x8GB - dual channel", description: "Corsair mid-range unbuffered overclocking ram", price: 130, spec: "Capacity: DDR3,16GB,Speed: 2400MHz,Unbuffered", image: "https://images-na.ssl-images-amazon.com/images/I/51OOWqdYvNL._SY300_.jpg")
ram2 = Part.create!(name: "G.Skill Ripjaws V DDR4 2x4GB - dual channel", description: "G.Skill high-end unbuffered overclocking ram", price: 75, spec: "Capacity: DDR4,8GB,Speed: 2400MHz,Unbuffered", image: "https://images-na.ssl-images-amazon.com/images/I/41z2%2BvB0YnL._SY300_.jpg")
ram3 = Part.create!(name: "Corsair Vengeance LPX DDR4 2x8GB - dual channel", description: "Corsair high-end unbuffered overclocking ram", price: 120, spec: "Capacity: DDR4,8GB,Speed: 2133MHz,Unbuffered", image: "http://i.ebayimg.com/images/g/VrsAAOSwt0FZDI-x/s-l300.jpg")
ram4 = Part.create!(name: "Crucial DDR4 ECC 4x16GB - quad channel", description: "Corsair high-end ECC server ram", price: 850, spec: "Capacity: 64GB,DDR4 ECC,Speed: 2133MHz,Not compatible with consumer grade hardware", image: "http://i.ebayimg.com/images/g/gQIAAOSwB-1Yxk-V/s-l300.jpg")
ram5 = Part.create!(name: "Corsair Vengeance LED DDR4 4x8GB - quad channel", description: "Aesthetics and performance, super high speed overclocking ram", price: 440, spec: "Capacity: 32GB,DDR4 ECC,Speed: 3400MHz,Unbuffered", image: "https://images-na.ssl-images-amazon.com/images/I/41J5TNIaF1L._SY300_.jpg")

gpu1 = Part.create!(name: "AMD RX480", description: "One of AMD's flagship graphics cards", price: 240, spec: "Architecture: 14nm Polaris,GRAM: 8GB GDDR5,Memory bandwidth: 224 GB/s or higher,Memory interface: 256 bit", image: "https://www.toptengamer.com/wp-content/uploads/2016/07/2-2-300x300.jpg")
gpu2 = Part.create!(name: "Nvidia GTX1080", description: "One of Nvidia's flagship graphics cards", price: 650, spec: "Architecture: 14nm Pascal,GRAM: 8GB GDDR5X,Memory speed: 10Gbps", image: "http://assets.nvidia.com/warehouse/products/public/graphics-card/pny-geforce-gtx-1080-ti-founders-edition-36273589-1.jpg")
gpu3 = Part.create!(name: "Nvidia GTX1060", description: "One of Nvidia's midrange graphics cards", price: 200, spec: "Architecture: 14nm Pascal,GRAM: 4GB GDDR5,Memory speed: 7Gbps", image: "https://images-na.ssl-images-amazon.com/images/I/51Sw903oQYL._SY300_.jpg")
gpu4 = Part.create!(name: "Nvidia Quadro GP100", description: "One of Nvidia's high end compute cards", price: 7095, spec: "Architecture: 14nm Pascal,GRAM: 16GB HBM2,Memory bitrate: 4096 Bit,Shader cores: 3584", image: "https://i.ebayimg.com/images/g/J1cAAOSwol5Yz9~W/s-l300.jpg")

sataa1 = Part.create!(name: "Sandisk Ultra II 240GB", description: "Standard 2.5\" SSD", price: 67, spec: "2.5\",SATA-3,240GB,Read: 450 MBs,Write: 450 MBs", image: "http://i.ebayimg.com/images/g/bE8AAOSwPCVX5CAA/s-l300.jpg")
sataa2 = Part.create!(name: "WD Black 1TB", description: "3.5\" Storage drive", price: 71, spec: "3.5\",SATA-3,1TB,Read and Write appx 50 MBs", image: "https://askconrad.files.wordpress.com/2011/07/wd-wd1501fass.jpg")
sataa3 = Part.create!(name: "Samsung 850 EVO 120GB", description: "High quality 2.5\" SSD", price: 80, spec: "2.5\",SATA-3,120GB,Read: 500+ MBs,Write: 500+ MBs", image: "http://i.ebayimg.com/images/g/AmUAAOSwB09YSSvZ/s-l300.jpg")

ssdM2a1 = Part.create!(name: "Samsung 950 EVO 500GB", description: "Top of the line NVMe M.2 SSD", price: 225, spec: "DDR3 Memory,500GB,NVMe M.2,Read: 3200MBs,Write: 1800MBs", image: "https://images-na.ssl-images-amazon.com/images/I/51cJkRd4mmL._SY300_.jpg")
satab1 = Part.create!(name: "Sandisk Ultra II 240GB", description: "Standard 2.5\" SSD", price: 67, spec: "2.5\",SATA-3,240GB,Read: 450 MBs,Write: 450 MBs", image: "http://i.ebayimg.com/images/g/bE8AAOSwPCVX5CAA/s-l300.jpg")
satab2 = Part.create!(name: "WD Black 1TB", description: "3.5\" Storage drive", price: 71, spec: "3.5\",SATA-3,1TB,Read and Write appx 50 MBs", image: "https://askconrad.files.wordpress.com/2011/07/wd-wd1501fass.jpg")
satab3 = Part.create!(name: "Samsung 850 EVO 120GB", description: "High quality 2.5\" SSD", price: 80, spec: "2.5\",SATA-3,120GB,Read: 500+ MBs,Write: 500+ MBs", image: "http://i.ebayimg.com/images/g/AmUAAOSwB09YSSvZ/s-l300.jpg")

ssdM2b1 = Part.create!(name: "Samsung 950 EVO 500GB", description: "Top of the line NVMe M.2 SSD", price: 225, spec: "DDR3 Memory,500GB,NVMe M.2,Read: 3200MBs,Write: 1800MBs", image: "https://images-na.ssl-images-amazon.com/images/I/51cJkRd4mmL._SY300_.jpg")

cooler1 = Part.create!(name: "Coolermaster Hyper 212 EVO", description: "Low cost cooler for the average user", price: 25, spec: "4 Copper heatpipes,All modern sockets,Height: 159mm", image: "http://i.ebayimg.com/images/g/RQUAAOSwG-1W1Mma/s-l300.jpg")
cooler2 = Part.create!(name: "Noctua NH-D15 Dual Radiator", description: "High end low noise ", price: 75, spec: "6 heatpipes,All modern sockets,Height: 165mm", image: "http://2.grgs.ro/images/products/1/750014/843433/normal/nh-d15-dbc37f9ada038ea74f272126298854e0.jpg")
cooler3 = Part.create!(name: "Corsair H115i AIO Hydro/Water", description: "High end all in one watercooler", price: 75, spec: "280mm radiator,All modern sockets,RGB,Comes with fans", image: "https://images-na.ssl-images-amazon.com/images/G/02/aplusautomation/vendorimages/036f5044-2b7c-443e-b313-4f1aa04f2102.png._CB283826032__SR300,300_.png")

psu1 = Part.create!(name: "Corsair VS550 ATX", description: "Standard high efficiency Power Supply", price: 40, spec: "550Watt", image: "https://images-na.ssl-images-amazon.com/images/G/02/aplusautomation/vendorimages/ce8d118c-bd00-4686-ab51-3843ae58b53d.jpg._CB526320805__SR300,300_.jpg")
psu2 = Part.create!(name: "Corsair HX1000 ATX", description: "High output high efficiency Power Supply", price: 189, spec: "1000Watt", image: "http://cyberpc.fr/11869-large/alimentations-corsair-hx1000-i.jpg")
psu3 = Part.create!(name: "Novatech 850W ATX", description: "Novatech 850W ATX power supply", price: 75, spec: "850Watt", image: "https://images-na.ssl-images-amazon.com/images/I/51K%2BgxwZCGL._SY300_.jpg")

odd1 = Part.create!(name: "Some disk drive", description: "Goes without saying really", price: 20, spec: "It's a disk drive", image: "http://i.ebayimg.com/images/g/G5AAAOxyVLNSxwPY/s-l300.jpg")
odd2 = Part.create!(name: "Some BluRay drive", description: "Goes without saying really", price: 20, spec: "It's a disk drive", image: "http://i.ebayimg.com/images/g/G5AAAOxyVLNSxwPY/s-l300.jpg")

nic1 = Part.create!(name: "Some network card", description: "Network interface controller", price: 50, spec: "1GBps", image: "https://images-eu.ssl-images-amazon.com/images/I/41nV0fjDyoL._SY300_QL70_.jpg")
nic2 = Part.create!(name: "HP dual 10Gb SFP+ DAC Network card", description: "Network interface controller used in datacentres", price: 230, spec: "2x10GBps", image: "https://images-na.ssl-images-amazon.com/images/I/51XqUqZvQLL._SY300_.jpg")

# create pre-made machines

rig1 = Rig.create!(description: "Mid range budget AMD gaming PC", user_id: admin1.id)
rig2 = Rig.create!(description: "High end Intel gaming PC", user_id: admin1.id)
rig3 = Rig.create!(description: "Mid range Intel gaming PC", user_id: user1.id)
rig4 = Rig.create!(description: "High end Intel workstation PC", user_id: admin1.id)

# assigning types

coolerType.parts << cooler1
coolerType.parts << cooler2
coolerType.parts << cooler3

oddType.parts << odd1
oddType.parts << odd2

nicType.parts << nic1
nicType.parts << nic2

cpuType.parts << cpu1
cpuType.parts << cpu2
cpuType.parts << cpu3
cpuType.parts << cpu4
cpuType.parts << cpu5
cpuType.parts << cpu6
moboType.parts << mobo1
moboType.parts << mobo2
moboType.parts << mobo3
moboType.parts << mobo4
moboType.parts << mobo5
gpuType.parts << gpu1
gpuType.parts << gpu2
gpuType.parts << gpu3
gpuType.parts << gpu4
ramType.parts << ram1
ramType.parts << ram2
ramType.parts << ram3
ramType.parts << ram4
ramType.parts << ram5
driveType.parts << sataa1
driveType.parts << sataa2
driveType.parts << sataa3
driveType.parts << ssdM2a1
drive2Type.parts << satab1
drive2Type.parts << satab2
drive2Type.parts << satab3
drive2Type.parts << ssdM2b1
psuType.parts << psu1
psuType.parts << psu2
psuType.parts << psu3
caseType.parts << case1
caseType.parts << case2
caseType.parts << case3

# creating pre-builts

rig1.parts << cpu1
rig1.parts << mobo1
rig1.parts << gpu1
rig1.parts << ram1
rig1.parts << sataa1
rig1.parts << psu1
rig1.parts << cooler2
rig1.parts << odd1
rig1.parts << case1

rig2.parts << cpu2
rig2.parts << mobo2
rig2.parts << gpu2
rig2.parts << ram2
rig2.parts << sataa3
rig2.parts << psu3
rig2.parts << cooler2
rig2.parts << case1

rig3.parts << cpu3
rig3.parts << mobo3
rig3.parts << gpu3
rig3.parts << ram3
rig3.parts << ssdM2a1
rig3.parts << satab1
rig3.parts << psu2
rig3.parts << cooler2
rig3.parts << odd1
rig3.parts << nic1
rig3.parts << case2

rig4.parts << cpu4
rig4.parts << mobo4
rig4.parts << gpu4
rig4.parts << ram4
rig4.parts << ssdM2a1
rig4.parts << psu2
rig4.parts << cooler2
rig4.parts << nic1
rig4.parts << case3

# assigning incompatibilities

ssdM2a1.incompatibilities << mobo1
ssdM2b1.incompatibilities << mobo1

mobo1.incompatibilities << cpu2
mobo1.incompatibilities << cpu3
mobo1.incompatibilities << cpu4
mobo1.incompatibilities << cpu5
mobo1.incompatibilities << ram2
mobo1.incompatibilities << ram3
mobo1.incompatibilities << ram4
mobo1.incompatibilities << ram5
mobo1.incompatibilities << ssdM2a1
mobo1.incompatibilities << ssdM2b1
mobo1.incompatibilities << case2

cpu1.incompatibilities << mobo2
cpu1.incompatibilities << mobo3
cpu1.incompatibilities << mobo4
cpu1.incompatibilities << mobo5
cpu1.incompatibilities << ram2
cpu1.incompatibilities << ram3
cpu1.incompatibilities << ram4
cpu1.incompatibilities << ram5

ram1.incompatibilities << mobo2
ram1.incompatibilities << mobo3
ram1.incompatibilities << mobo4
ram1.incompatibilities << mobo5
ram1.incompatibilities << cpu2
ram1.incompatibilities << cpu3
ram1.incompatibilities << cpu4
ram1.incompatibilities << cpu5

mobo2.incompatibilities << cpu1
mobo2.incompatibilities << cpu6
mobo2.incompatibilities << cpu3
mobo2.incompatibilities << ram1
mobo2.incompatibilities << ram4
mobo2.incompatibilities << case2

cpu2.incompatibilities << mobo1
cpu2.incompatibilities << mobo3
cpu2.incompatibilities << ram1
cpu2.incompatibilities << ram4

ram2.incompatibilities << mobo1
ram2.incompatibilities << cpu1
ram2.incompatibilities << cpu6

mobo3.incompatibilities << cpu1
mobo3.incompatibilities << cpu2
mobo3.incompatibilities << cpu4
mobo3.incompatibilities << cpu5
mobo3.incompatibilities << cpu6
mobo3.incompatibilities << ram1
mobo3.incompatibilities << ram4
mobo3.incompatibilities << case2

cpu3.incompatibilities << mobo1
cpu3.incompatibilities << mobo2
cpu3.incompatibilities << mobo4
cpu3.incompatibilities << mobo5
cpu3.incompatibilities << ram1
cpu3.incompatibilities << ram4

ram3.incompatibilities << mobo1
ram3.incompatibilities << cpu1
ram3.incompatibilities << cpu6

mobo4.incompatibilities << cpu1
mobo4.incompatibilities << cpu3
mobo4.incompatibilities << cpu6
mobo4.incompatibilities << ram1
mobo4.incompatibilities << case2
mobo4.incompatibilities << case1

cpu4.incompatibilities << mobo1
cpu4.incompatibilities << mobo3
cpu4.incompatibilities << ram1

ram4.incompatibilities << mobo1
ram4.incompatibilities << cpu1
ram4.incompatibilities << cpu6

mobo5.incompatibilities << cpu1
mobo5.incompatibilities << cpu3
mobo5.incompatibilities << cpu6
mobo5.incompatibilities << ram1
mobo5.incompatibilities << case2

cpu5.incompatibilities << mobo1
cpu5.incompatibilities << mobo3
cpu5.incompatibilities << ram1

ram5.incompatibilities << mobo1
ram5.incompatibilities << cpu1
ram5.incompatibilities << cpu6

case2.incompatibilities << mobo1
case2.incompatibilities << mobo2
case2.incompatibilities << mobo3
case2.incompatibilities << mobo4
case2.incompatibilities << mobo5

cpu6.incompatibilities << mobo2
cpu6.incompatibilities << mobo3
cpu6.incompatibilities << mobo4
cpu6.incompatibilities << mobo5
cpu6.incompatibilities << ram2
cpu6.incompatibilities << ram3
cpu6.incompatibilities << ram4
cpu6.incompatibilities << ram5
