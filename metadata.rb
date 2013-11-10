name             'vpn'
maintainer       'Dan Fruehauf'
maintainer_email 'malkodan@gmail.com'
license          'GPLv2'
description      'Installs/Configures a VPN server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe "vpn::openssh", "Installs an OpenSSH VPN server"
