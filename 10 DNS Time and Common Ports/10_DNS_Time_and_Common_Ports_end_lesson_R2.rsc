# oct/05/2023 17:17:38 by RouterOS 6.48.7
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
add interface=ether1 list=Neighbors
/ip dhcp-client
add disabled=no interface=ether1
/ip dns
set servers=8.8.8.8,8.8.4.4
/ip dns static
add address=159.148.172.205 name=mikrotik
/ip service
set telnet address=192.168.1.0/24 port=2323
set ftp disabled=yes
set www disabled=yes
set api disabled=yes
set api-ssl disabled=yes
/system clock
set time-zone-name=America/Argentina/Buenos_Aires
/system identity
set name=R2
/system ntp client
set enabled=yes server-dns-names=ntp.ign.gob.ar
/tool romon
set enabled=yes secrets=123456
