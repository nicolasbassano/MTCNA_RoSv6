# oct/04/2023 19:47:06 by RouterOS 6.48.7
# software id = 
#
#
#
/interface list
add name=Neighbors
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/user group
add name=TelnetRead policy="telnet,read,!local,!ssh,!ftp,!reboot,!write,!polic\
    y,!test,!winbox,!password,!web,!sniff,!sensitive,!api,!romon,!dude,!tikapp\
    "
/interface list member
add interface=ether4 list=Neighbors
/ip dhcp-client
add disabled=no interface=ether1
/ip service
set telnet address=192.168.1.0/24 port=2323
set ftp disabled=yes
set www disabled=yes
set api disabled=yes
set api-ssl disabled=yes
/system identity
set name=R3
/tool romon
set enabled=yes secrets=123456
