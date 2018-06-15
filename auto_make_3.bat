.\utility\hex2bin.exe .\in\ota_3.hex
move .\in\ota_3.bin .\out
.\utility\mkimage.exe single .\out\ota_3.bin .\in\ota_version_3.h .\out\ota_3.img