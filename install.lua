-- drmon installation script edited by PanPioter
--
--

local libURL = "https://raw.githubusercontent.com/PanPioter1/drmon-s-draconic-reactor-controller-for-1.18.2-by-PanPioter/main/lib/f.lua"
local startupURL = "https://raw.githubusercontent.com/PanPioter1/drmon-s-draconic-reactor-controller-for-1.18.2-by-PanPioter/main/mainSctipt.lua"
local lib, startup
local libFile, startupFile

fs.makeDir("lib")

lib = http.get(libURL)
libFile = lib.readAll()

local file1 = fs.open("lib/f", "w")
file1.write(libFile)
file1.close()

startup = http.get(startupURL)
startupFile = startup.readAll()


local file2 = fs.open("startup", "w")
file2.write(startupFile)
file2.close()

