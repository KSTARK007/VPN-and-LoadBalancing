# VPN and LoadBalancing
This is a Networking project which simulates VPN service 

## Prerequisites
1) [vagrant](https://www.vagrantup.com/downloads.html)
2) [virtual box](https://www.virtualbox.org/)

## Steps to follow 
1) fork the project 
2) clone the project using git 
3) open Vagrantfile and change the number of servers according to the user needs 
4) open VPN/vagrantfile and change the number of vpn servers according to the user needs 
5) open terminal in VPN-and-LoadBalancing-master 
6) vagrant init
7) cd VPN
8) vagrant init 
9) cd ..
### Windows
in master folder there are two files called server.bat , vpn.bat just double click on them(as admin).

### Ubuntu or any other linux versions 
//master folder
1) vagrant up  
2) cd VPN 
3) vagrant up 

## Final steps 
1) open browser and type
2) type 10.11.12.150 
3) refresh the browser you will get output from different vpn proxy servers set up at 10.11.12.151,152,153,154,155/24
4) type quiz in the search box and click search it will take u to internal webpage created i.e master/index.html else in any other keyword  will redirect to google with the keyword inputted .

