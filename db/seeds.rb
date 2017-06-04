# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin1 = User.create!(username: "Louis", email: "louis@louis.com", password: "password", password_confirmation: "password", rank: "admin")
user1 = User.create!(username: "John", email: "john@john.com", password: "password", password_confirmation: "password", rank: "standard")

moboType = Parttype.create!(parttype: "mobo", description: "Motherboard")
cpuType = Parttype.create!(parttype: "cpu", description: "Central Processing Unit")
gpuType = Parttype.create!(parttype: "gpu", description: "Graphics Card")
ramType = Parttype.create!(parttype: "ram", description: "Random Access Memory")

mobo1 = Part.create!(name: "GA970A-DS3P", description: "Gigabyte AM3+ motherboard", price: 10, spec: "AM3+\nDDR3 non-ecc\nNo onboard graphics")
mobo2 = Part.create!(name: "MSI X99A SLI ATX", description: "MSI LGA2011-v3 high end motherboard", price: 10, spec: "LGA2011-v3\nDDR4 non-ecc\nNo onboard graphics")
mobo3 = Part.create!(name: "ROG Strix Z270E Gaming", description: "ROG Strix Intel high end gaming motherboard", price: 10, spec: "FCLGA1151\nDDR4 non-ecc\nNo onboard graphics")

cpu1 = Part.create!(name: "AMD FX6300", description: "AMD mid-tier six core cpu", price: 10, spec: "Cores: 6\nClock speed: 3.5GHz\nAM3+ socket")
cpu2 = Part.create!(name: "Intel Core™ i7-5960X Processor Extreme Edition", description: "Intel maxed out 8c/16t cpu", price: 10, spec: "Cores: 8\nThreads: 16\nClock speed: 3.0 to 3.5GHz \nLGA2011-v3 socket")
cpu3 = Part.create!(name: "Intel Core™ i7-7700K", description: "7th gen 4c8t desperate for cash", price: 10, spec: "Cores: 4\nThreads: 8\nClock speed: 4.2 to 4.5GHz\nFCLGA1151 socket\n")


ram1 = Part.create!(name: "Corsair HyperX RAM 8GB", description: "Corsair mid-range unbuffered overclocking ram", price: 10, spec: "Capacity: DDR3\n8GB\nSpeed: 2400MHz\nUnbuffered")
ram2 = Part.create!(name: "G.Skill Ripjaws V", description: "G.Skill high-end unbuffered overclocking ram", price: 10, spec: "Capacity: DDR4\n8GB\nSpeed: 2400MHz\nUnbuffered")
ram3 = Part.create!(name: "Corsair Vengeance LPX 2x8GB - dual channel kit", description: "Corsair high-end unbuffered overclocking ram", price: 10, spec: "Capacity: DDR4\n8GB\nSpeed: 2133MHz\nUnbuffered")

gpu1 = Part.create!(name: "AMD RX480", description: "One of AMD's flagship graphics cards", price: 10, spec: "Architecture: 14nm Polaris\nGRAM: 8GB GDDR5\nMemory bandwidth: 224 GB/s or higher\nMemory interface: 256 bit")
gpu2 = Part.create!(name: "Nvidia GTX1080", description: "One of Nvidia's flagship graphics cards", price: 10, spec: "Architecture: 14nm Pascal\nGRAM: 8GB GDDR5X\nMemory speed: 10Gbps")
gpu3 = Part.create!(name: "Nvidia GTX1060", description: "One of Nvidia's midrange graphics cards", price: 10, spec: "Architecture: 14nm Pascal\nGRAM: 4GB GDDR5\nMemory speed: 7Gbps")

rig1 = Rig.create!(description: "Mid range budget AMD gaming rig", user_id: admin1.id)
rig2 = Rig.create!(description: "High end Intel gaming rig", user_id: admin1.id)
rig3 = Rig.create!(description: "Mid range Intel gaming rig", user_id: user1.id)

cpuType.parts << cpu1
cpuType.parts << cpu2
cpuType.parts << cpu3
moboType.parts << mobo1
moboType.parts << mobo2
moboType.parts << mobo3
gpuType.parts << gpu1
gpuType.parts << gpu2
gpuType.parts << gpu3
ramType.parts << ram1
ramType.parts << ram2
ramType.parts << ram3

rig1.parts << cpu1
rig1.parts << mobo1
rig1.parts << gpu1
rig1.parts << ram1
rig2.parts << cpu2
rig2.parts << mobo2
rig2.parts << gpu2
rig2.parts << ram2
rig3.parts << cpu3
rig3.parts << mobo3
rig3.parts << gpu3
rig3.parts << ram3

mobo1.incompatibilities << mobo2
mobo1.incompatibilities << mobo3
mobo1.incompatibilities << cpu2
mobo1.incompatibilities << cpu3
mobo1.incompatibilities << ram2
mobo1.incompatibilities << ram3

cpu1.incompatibilities << mobo2
cpu1.incompatibilities << mobo3
cpu1.incompatibilities << cpu2
cpu1.incompatibilities << cpu3
cpu1.incompatibilities << ram2
cpu1.incompatibilities << ram3

ram1.incompatibilities << mobo2
ram1.incompatibilities << mobo3
ram1.incompatibilities << cpu2
ram1.incompatibilities << cpu3
ram1.incompatibilities << ram2
ram1.incompatibilities << ram3


mobo2.incompatibilities << mobo1
mobo2.incompatibilities << mobo3
mobo2.incompatibilities << cpu1
mobo2.incompatibilities << cpu3
mobo2.incompatibilities << ram1

cpu2.incompatibilities << mobo1
cpu2.incompatibilities << mobo3
cpu2.incompatibilities << cpu1
cpu2.incompatibilities << cpu3
cpu2.incompatibilities << ram1

ram2.incompatibilities << mobo1
ram2.incompatibilities << cpu1
ram2.incompatibilities << ram1
ram2.incompatibilities << ram3


mobo3.incompatibilities << mobo1
mobo3.incompatibilities << cpu1
mobo3.incompatibilities << cpu2
mobo3.incompatibilities << ram1

cpu3.incompatibilities << mobo1
cpu3.incompatibilities << mobo2
cpu3.incompatibilities << cpu1
cpu3.incompatibilities << cpu2
cpu3.incompatibilities << ram1

ram3.incompatibilities << mobo1
ram3.incompatibilities << cpu1
ram3.incompatibilities << ram1
ram3.incompatibilities << ram2
