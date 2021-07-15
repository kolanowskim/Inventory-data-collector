# Inventory-data-collector

I've created this script for inventory in my company. I was receiving data from each computer like those in "Data" directory. I was responsible for collect all data from all computers in a specific format to one excel.

  1. To run this script - dataCollector.pl you need to insall Excel::Writer::XLSX library.
  2. Then you can ran it by terminal. By command - perl dataCollector.pl (You must indicate a location or be in the same location).
  4. Data is being saved into perl.xlsx


An example of the data the script works on:
Computer model;MacBookPro16,3
Serial number;XXXXXX
Procesor;Intel(R) Core(TM) i5-8257U
Memory;16GB
Disk;APPLE SSD AP0256N 251.0GB
System Version;MacOS Big Sur (11.2.3)
Computer name;00603
Username;u.test
Applications;
 /Applications/Docker.app
 /Applications/IntelliJ IDEA.app
 /Applications/SteelSeries Engine 3/SteelSeries Engine 3.app
 /Applications/Visual Studio Code.app
 /Applications/MacPass.app
 /Applications/SteelSeries Engine 3/SteelSeries Engine 3 Uninstaller.app
 /Applications/IntelliJ IDEA CE.app
 /Applications/Postman.app
 /Applications/DBeaver.app
Brew;
bdw-gc
c-ares
cask
dnsmasq
emacs
gettext


An example of output Data:
![alt text](https://github.com/kolanowskim/Inventory-data-collector/blob/main/Output.png?raw=true)
