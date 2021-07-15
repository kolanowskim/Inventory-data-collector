# Inventory-data-collector

I've created this script for inventory in my company. I was receiving data from each computer like those in "Data" directory. I was responsible for collect all data from all computers in a specific format to one excel.

  1. To run this script - dataCollector.pl you need to insall Excel::Writer::XLSX library.
  2. Then you can ran it by terminal. By command - perl dataCollector.pl (You must indicate a location or be in the same location).
  4. Data is being saved into perl.xlsx


An example of the data the script works on:<br/>
Computer model;MacBookPro16,3<br/>
Serial number;XXXXXX<br/>
Procesor;Intel(R) Core(TM) i5-8257U<br/>
Memory;16GB<br/>
Disk;APPLE SSD AP0256N 251.0GB<br/>
System Version;MacOS Big Sur (11.2.3)<br/>
Computer name;00603<br/>
Username;u.test<br/>
Applications;<br/>
 /Applications/Docker.app<br/>
 /Applications/IntelliJ IDEA.app<br/>
 /Applications/SteelSeries Engine 3/SteelSeries Engine 3.app<br/>
 /Applications/Visual Studio Code.app<br/>
 /Applications/MacPass.app<br/>
 /Applications/SteelSeries Engine 3/SteelSeries Engine 3 Uninstaller.app<br/>
 /Applications/IntelliJ IDEA CE.app<br/>
 /Applications/Postman.app<br/>
 /Applications/DBeaver.app<br/>
Brew;<br/>
bdw-gc<br/>
c-ares<br/>
cask<br/>
dnsmasq<br/>
emacs<br/>
gettext<br/>


An example of output Data:
![alt text](https://github.com/kolanowskim/Inventory-data-collector/blob/main/Output.png?raw=true)
