# shell script for configuring the AdHoc Connection
# for remote PC -- works for Charlie's Laptop w/ wifi antenna


# edit this file to make sure you're using the correct wireless interface name 

sudo service network-manager stop
# sudo service network-manager start

sudo ip link set wlx000f00a614a2 down

sudo iwconfig wlx000f00a614a2 mode ad-hoc

#sudo iwconfig wlx000f00a614a2 channel 4

#sudo iwconfig wlx000f00a614a2 key 1234567890

sudo ip link set wlx000f00a614a2 up

sudo ip addr add 192.168.7.10/24 dev wlx000f00a614a2

sudo iwconfig wlx000f00a614a2 essid "TurtleAdHoc"