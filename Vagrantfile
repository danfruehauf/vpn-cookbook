# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "backup-berkshelf"
  config.vm.box = "Berkshelf-CentOS-6.3-x86_64-minimal"
  config.vm.box_url = "https://dl.dropbox.com/u/31081437/Berkshelf-CentOS-6.3-x86_64-minimal.box"
  config.vm.network :private_network, ip: "33.33.33.10"
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    #chef.json = {
    #  :openssh => {
    #    :server => {
    #      :permit_root_login => 'yes',
    #      :permit_tunnel     => 'yes'
    #    }
    #  }
    #}

    chef.run_list = [
      "recipe[vpn::openssh]",
      "recipe[vpn::nat]"
    ]
  end
end
