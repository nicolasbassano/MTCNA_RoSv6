# oct/19/2023 18:45:51 by RouterOS 6.48.7
# software id = 
#
#
#
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/snmp community
add addresses=0.0.0.0/0 authentication-password=123456 encryption-password=\
    123456 name=TNB
/ip address
add address=192.168.0.1/24 interface=ether2 network=192.168.0.0
/ip dhcp-client
add disabled=no interface=ether1
/ip firewall nat
add action=masquerade chain=srcnat out-interface=ether1
/ip service
set telnet address=192.168.0.0/24
set ftp disabled=yes
set api disabled=yes
set api-ssl disabled=yes
/snmp
set contact="The Network Berg" enabled=yes location="South Africa" \
    trap-community=TNB trap-version=2
/system identity
set name=R1
/tool graphing interface
add
/tool traffic-monitor
add interface=ether1 name=beep on-event=beep threshold=10000000 traffic=\
    received
