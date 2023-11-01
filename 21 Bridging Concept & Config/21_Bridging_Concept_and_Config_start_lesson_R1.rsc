# nov/01/2023 20:46:07 by RouterOS 6.48.7
# software id = 
#
#
#
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/snmp community
add addresses=0.0.0.0/0 authentication-password=123456 encryption-password=\
    123456 name=TNB
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
/tool e-mail
set address=173.194.77.108 from=darkpaladin14@gmail.com password=123456 port=\
    507 start-tls=yes user=darkpaladin14@gmail.com
/tool graphing interface
add
/tool netwatch
add down-script="tool e-mail send to=vanderbergj@thenetworkberg.com subject=\"\
    LAN has gone down\" start-tls=yes body=\"Mikrotik TNB has gone offline\"" \
    host=192.168.0.2 interval=10s up-script=beep
/tool traffic-monitor
add interface=ether1 name=beep on-event=beep threshold=10000000 traffic=\
    received
