.\utility\hex2bin.exe .\in\ota_1.hex
move .\in\ota_1.bin .\out
.\utility\mkimage.exe single .\out\ota_1.bin .\in\ota_version_1.h .\out\ota_1.img

.\utility\hex2bin.exe .\in\ota_2.hex
move .\in\ota_2.bin .\out
.\utility\mkimage.exe single .\out\ota_2.bin .\in\ota_version_2.h .\out\ota_2.img

.\utility\mkimage.exe multi spi secondary_bootloader.bin .\out\ota_1.img 0x8000 .\out\ota_2.img 0x13000 0x1F000 cfg 0x00,16:00:00:00:00:16 .\out\men.bin