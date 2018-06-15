# da14583_dual_image_boot

Usage:

1. make Dual image (multipart)
 a. use keil to build first project, copy .hex file to 'in' folder, rename to ota_1.hex
 b. use keil to build second project, copy .hex file to 'in' folder, rename to ota_2.hex
 c. modify ota_version_1.h and ota_version_2.h of 'in' folder
    just change version and date.
 d. run 'auto_make.bat'(double click it also work)
 e. the mem.bin file in 'out' folder is what you want
 f. using Smart Snippet tool to burn mem.bin into flash
 
2. make Single image
 a. build keil progect, get .hex file
 b. copy that file into 'in' folder, rename to ota_3.hex
 c. run 'auto_make_3.bat'
 d. the ota_3.img in 'out' folder is what you want
 e. using SUOTA App to ota ota_3.img into DA14583 chip
 
3. Using Smart snippet tools to inspect product header's content
 a. open smart snippet
 b. open proprietary header programmer
 c. click 'Browse' button beside 'File:' textbox
 d. choose 'product_header.txt' 
 e. Enter '1F000' beside Memory offset(HEX) textbox
 f. click 'Connect', then 'Read', ...
 
4. want to ispect image header's content, using the same method,
  but change file to 'image_header.txt'
  
  
Notes: there are a Dialog official utility writen by Python, call 'Multipart Binary Generator',
  you can download it from Dialog's website. That one is a more functional utility.
  My project is a simplify version.
  
