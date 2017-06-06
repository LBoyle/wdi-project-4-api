
admin1 = User.create!(username: "Louis", email: "louis@louis.com", password: "password", password_confirmation: "password", rank: "admin")
user1 = User.create!(username: "John", email: "john@john.com", password: "password", password_confirmation: "password", rank: "standard")

moboType = Parttype.create!(parttype: "mobo", description: "Motherboard")
cpuType = Parttype.create!(parttype: "cpu", description: "Central Processing Unit")
gpuType = Parttype.create!(parttype: "gpu", description: "Graphics Card")
ramType = Parttype.create!(parttype: "ram", description: "Random Access Memory")
driveType = Parttype.create!(parttype: "drive", description: "Drive")
psuType = Parttype.create!(parttype: "psu", description: "Power supply unit")
coolerType = Parttype.create!(parttype: "cooler", description: "CPU Cooler")
nicType = Parttype.create!(parttype: "nic", description: "Network Card")
cddType = Parttype.create!(parttype: "cdd", description: "Optical Disk Drive")



sata1 = Part.create!(name: "Sandisk Ultra II 240GB", description: "Standard 2.5\" SSD", price: 67, spec: "2.5\"\nSATA-3\n240GB\nRead: 450 MBs\nWrite: 450 MBs")
sata2 = Part.create!(name: "WD Black 1TB", description: "3.5\" Storage drive", price: 71, spec: "3.5\"\nSATA-3\n1TB\nRead and Write appx 50 MBs")
sata3 = Part.create!(name: "Samsung 850 EVO 120GB", description: "High quality 2.5\" SSD", price: 80, spec: "2.5\"\nSATA-3\n120GB\nRead: 500+ MBs\nWrite: 500+ MBs")

ssdM21 = Part.create!(name: "Samsung 950 EVO 500GB", description: "Top of the line NVMe M.2 SSD", price: 225, spec: "DDR3 Memory\n500GB\nNVMe M.2\nRead: 3200MBs\nWrite: 1800MBs")

mobo1 = Part.create!(name: "GA970A-DS3P AMD", description: "Gigabyte AM3+ motherboard", price: 60, spec: "AM3+\nDDR3 non-ecc\nNo onboard graphics")
mobo2 = Part.create!(name: "MSI X99A SLI ATX Intel", description: "MSI LGA2011-v3 high end motherboard", price: 220, spec: "LGA2011-v3\nDDR4 non-ecc\nNo onboard graphics")
mobo3 = Part.create!(name: "ROG Strix Z270E Gaming Intel", description: "ROG Strix Intel high end gaming motherboard", price: 190, spec: "FCLGA1151\nDDR4 non-ecc\nNo onboard graphics")
mobo4 = Part.create!(name: "ASUS ROG RAMPAGE V EDITION 10 Intel", description: "ASUS ROG Top end motherboard", price: 500, spec: "LGA2011-v3\nDDR4 ECC supported\nNo onboard graphics")
mobo5 = Part.create!(name: "MSI X99A GODLIKE Intel", description: "MSI High end motherboard", price: 450, spec: "LGA2011-v3\nDDR4 non-ecc\nNo onboard graphics")

cpu1 = Part.create!(name: "AMD FX6300", description: "AMD mid-tier six core cpu", price: 72, spec: "Cores: 6\nClock speed: 3.5GHz\nAM3+ socket")
cpu2 = Part.create!(name: "Intel Core i7-5960X", description: "Intel maxed out Extreme Edition 8c/16t cpu", price: 1200, spec: "Cores: 8\nThreads: 16\nClock speed: 3.0 to 3.5GHz \nLGA2011-v3 socket")
cpu3 = Part.create!(name: "Intel Core i7-7700K", description: "7th gen 4c8t desperate for cash", price: 305, spec: "Cores: 4\nThreads: 8\nClock speed: 4.2 to 4.5GHz\nFCLGA1151 socket\n")
cpu4 = Part.create!(name: "Intel Xeon E5-4669V3", description: "Among the best multicore cpus ever released to date, server grade, adapted for enthusiasts", price: 7000, spec: "Cores: 18\nThreads: 36\nClock speed: 2.1 to 2.9GHz\nLGA2011-v3 socket\n40 pci-e lanes")
cpu5 = Part.create!(name: "Intel Core i7 6800K", description: "High end Intel consumer CPU", price: 440, spec: "Cores: 6\nThreads: 12\nClock speed: 3.4 to 3.6GHz\nLGA2011-v3 socket\n28 pci-e lanes")


ram1 = Part.create!(name: "Corsair HyperX DDR3 2x8GB - dual channel", description: "Corsair mid-range unbuffered overclocking ram", price: 130, spec: "Capacity: DDR3\n16GB\nSpeed: 2400MHz\nUnbuffered")
ram2 = Part.create!(name: "G.Skill Ripjaws V DDR4 2x4GB - dual channel", description: "G.Skill high-end unbuffered overclocking ram", price: 75, spec: "Capacity: DDR4\n8GB\nSpeed: 2400MHz\nUnbuffered")
ram3 = Part.create!(name: "Corsair Vengeance LPX DDR4 2x8GB - dual channel", description: "Corsair high-end unbuffered overclocking ram", price: 120, spec: "Capacity: DDR4\n8GB\nSpeed: 2133MHz\nUnbuffered")
ram4 = Part.create!(name: "Crucial DDR4 ECC 4x16GB - quad channel", description: "Corsair high-end ECC server ram", price: 850, spec: "Capacity: 64GB\nDDR4 ECC\nSpeed: 2133MHz\nNot compatible with consumer grade hardware")
ram5 = Part.create!(name: "Corsair Vengeance LED DDR4 4x8GB - quad channel", description: "Aesthetics and performance, super high speed overclocking ram", price: 440, spec: "Capacity: 32GB\nDDR4 ECC\nSpeed: 3400MHz\nUnbuffered")

gpu1 = Part.create!(name: "AMD RX480", description: "One of AMD's flagship graphics cards", price: 240, spec: "Architecture: 14nm Polaris\nGRAM: 8GB GDDR5\nMemory bandwidth: 224 GB/s or higher\nMemory interface: 256 bit")
gpu2 = Part.create!(name: "Nvidia GTX1080", description: "One of Nvidia's flagship graphics cards", price: 650, spec: "Architecture: 14nm Pascal\nGRAM: 8GB GDDR5X\nMemory speed: 10Gbps")
gpu3 = Part.create!(name: "Nvidia GTX1060", description: "One of Nvidia's midrange graphics cards", price: 200, spec: "Architecture: 14nm Pascal\nGRAM: 4GB GDDR5\nMemory speed: 7Gbps")
gpu4 = Part.create!(name: "Nvidia Quadro GP100", description: "One of Nvidia's high end compute cards", price: 7095, spec: "Architecture: 14nm Pascal\nGRAM: 16GB HBM2\nMemory bitrate: 4096 Bit\nShader cores: 3584")

psu1 = Part.create!(name: "Corsair VS550 ATX", description: "Standard high efficiency Power Supply", price: 40, spec: "550Watt")
psu2 = Part.create!(name: "Corsair HX1000 ATX", description: "High output high efficiency Power Supply", price: 189, spec: "1000Watt")
psu3 = Part.create!(name: "Novatech 850W ATX", description: "Novatech 850W ATX power supply", price: 75, spec: "850Watt")

cooler1 = Part.create!(name: "Coolermaster Hyper 212 EVO", description: "Low cost cooler for the average user", price: 25, spec: "4 Copper heatpipes\nAll modern sockets\nHeight: 159mm")
cooler1 = Part.create!(name: "Noctua NH-D15 Dual Radiator", description: "High end low noise ", price: 25, spec: "4 Copper heatpipes\nAll modern sockets\nHeight: 159mm")


# create pre-made machines

rig1 = Rig.create!(description: "Mid range budget AMD gaming rig", user_id: admin1.id)
rig2 = Rig.create!(description: "High end Intel gaming rig", user_id: admin1.id)
rig3 = Rig.create!(description: "Mid range Intel gaming rig", user_id: user1.id)
rig4 = Rig.create!(description: "Enthusiast grade Intel workstation rig", user_id: admin1.id)

# assigning types

cpuType.parts << cpu1
cpuType.parts << cpu2
cpuType.parts << cpu3
cpuType.parts << cpu4
cpuType.parts << cpu5
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
driveType.parts << sata1
driveType.parts << sata2
driveType.parts << sata3
driveType.parts << ssdM21
psuType.parts << psu1
psuType.parts << psu2
psuType.parts << psu3

# creating pre-builts

rig1.parts << cpu1
rig1.parts << mobo1
rig1.parts << gpu1
rig1.parts << ram1
rig1.parts << sata1
rig1.parts << psu1

rig2.parts << cpu2
rig2.parts << mobo2
rig2.parts << gpu2
rig2.parts << ram2
rig2.parts << sata3
rig2.parts << psu3

rig3.parts << cpu3
rig3.parts << mobo3
rig3.parts << gpu3
rig3.parts << ram3
rig3.parts << ssdM21
rig3.parts << psu2

rig4.parts << cpu4
rig4.parts << mobo4
rig4.parts << gpu4
rig4.parts << ram4
rig4.parts << ssdM21
rig4.parts << psu2

# assigning incompatibilities

ssdM21.incompatibilities << mobo1

mobo1.incompatibilities << mobo2
mobo1.incompatibilities << mobo3
mobo1.incompatibilities << mobo4
mobo1.incompatibilities << mobo5
mobo1.incompatibilities << cpu2
mobo1.incompatibilities << cpu3
mobo1.incompatibilities << cpu4
mobo1.incompatibilities << cpu5
mobo1.incompatibilities << ram2
mobo1.incompatibilities << ram3
mobo1.incompatibilities << ram4
mobo1.incompatibilities << ram5
mobo1.incompatibilities << ssdM21

cpu1.incompatibilities << mobo2
cpu1.incompatibilities << mobo3
cpu1.incompatibilities << mobo4
cpu1.incompatibilities << mobo5
cpu1.incompatibilities << cpu2
cpu1.incompatibilities << cpu3
cpu1.incompatibilities << cpu4
cpu1.incompatibilities << cpu5
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
ram1.incompatibilities << ram2
ram1.incompatibilities << ram3
ram1.incompatibilities << ram4
ram1.incompatibilities << ram5


mobo2.incompatibilities << mobo1
mobo2.incompatibilities << mobo3
mobo2.incompatibilities << mobo4
mobo2.incompatibilities << mobo5
mobo2.incompatibilities << cpu1
mobo2.incompatibilities << cpu3
mobo2.incompatibilities << ram1
mobo2.incompatibilities << ram4

cpu2.incompatibilities << mobo1
cpu2.incompatibilities << mobo3
cpu2.incompatibilities << cpu1
cpu2.incompatibilities << cpu3
cpu2.incompatibilities << cpu4
cpu2.incompatibilities << ram1
cpu2.incompatibilities << ram4

ram2.incompatibilities << mobo1
ram2.incompatibilities << cpu1
ram2.incompatibilities << ram1
ram2.incompatibilities << ram3
ram2.incompatibilities << ram4
ram2.incompatibilities << ram5


mobo3.incompatibilities << mobo1
mobo3.incompatibilities << mobo2
mobo3.incompatibilities << mobo4
mobo3.incompatibilities << mobo5
mobo3.incompatibilities << cpu1
mobo3.incompatibilities << cpu2
mobo3.incompatibilities << cpu4
mobo3.incompatibilities << cpu5
mobo3.incompatibilities << ram1
mobo3.incompatibilities << ram4

cpu3.incompatibilities << mobo1
cpu3.incompatibilities << mobo2
cpu3.incompatibilities << mobo4
cpu3.incompatibilities << mobo5
cpu3.incompatibilities << cpu1
cpu3.incompatibilities << cpu2
cpu3.incompatibilities << cpu4
cpu3.incompatibilities << cpu5
cpu3.incompatibilities << ram1
cpu3.incompatibilities << ram4

ram3.incompatibilities << mobo1
ram3.incompatibilities << cpu1
ram3.incompatibilities << ram1
ram3.incompatibilities << ram2
ram3.incompatibilities << ram4
ram3.incompatibilities << ram5


mobo4.incompatibilities << mobo1
mobo4.incompatibilities << mobo2
mobo4.incompatibilities << mobo3
mobo4.incompatibilities << mobo5
mobo4.incompatibilities << cpu1
mobo4.incompatibilities << cpu3
mobo4.incompatibilities << ram1

cpu4.incompatibilities << mobo1
cpu4.incompatibilities << mobo3
cpu4.incompatibilities << cpu1
cpu4.incompatibilities << cpu2
cpu4.incompatibilities << cpu3
cpu4.incompatibilities << cpu5
cpu4.incompatibilities << ram1

ram4.incompatibilities << mobo1
ram4.incompatibilities << cpu1
ram4.incompatibilities << ram1
ram4.incompatibilities << ram2
ram4.incompatibilities << ram3
ram4.incompatibilities << ram5


mobo5.incompatibilities << mobo1
mobo5.incompatibilities << mobo2
mobo5.incompatibilities << mobo3
mobo5.incompatibilities << mobo4
mobo5.incompatibilities << cpu1
mobo5.incompatibilities << cpu3
mobo5.incompatibilities << ram1

cpu5.incompatibilities << mobo1
cpu5.incompatibilities << mobo3
cpu5.incompatibilities << cpu1
cpu5.incompatibilities << cpu2
cpu5.incompatibilities << cpu3
cpu5.incompatibilities << cpu4
cpu5.incompatibilities << ram1

ram5.incompatibilities << mobo1
ram5.incompatibilities << cpu1
ram5.incompatibilities << ram1
ram5.incompatibilities << ram2
ram5.incompatibilities << ram3
ram5.incompatibilities << ram4
