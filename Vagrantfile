# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "vpn-cookbook"
  config.vm.box = "Berkshelf-CentOS-6.4-x86_64-minimal"
  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130731.box"
  config.vm.network :private_network, ip: "33.33.33.10"
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|

    chef.json = {
      :openvpn => {
        :routes => [],
        :gateway => "vpn.example.com",
        :subnet => "10.8.0.0",
        :netmask => "255.255.0.0",
        :key => {
          :size => 2048,
          :country => "US",
          :province => "CA",
          :city => "SanFrancisco",
          :org => "Fort-Funston",
          :email => "me@example.com"
        }
      }
    }

    chef.run_list = [
      "recipe[vpn::nat]",
      "recipe[vpn::openssh]",
      "recipe[vpn::openvpn]"
    ]
  end
end
