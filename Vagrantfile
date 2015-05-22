# -*- mode: ruby -*-
# vi: set ft=ruby :
# vi: set tabstop=2 shiftwidth=2 expandtab

boxes = [
  { 
    :name => "cleanlinux", 
    :ip => [
      "10.11.12.119"
    ],
    :synced_folders => [
      {'src' => '/var/www'},
    ], 
  },
]

Vagrant.configure("2") do |config|
  boxes.each do |opts|
    config.vm.define opts[:name] do |config|
      config.vm.box = "opscode_debian64"
      config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_debian-7.2.0_chef-provisionerless.box"
      config.vm.boot_timeout = 600

      config.vm.network :public_network	
      config.vm.provision "shell", path: "provision.sh"

      if opts[:ip].is_a? Array
        opts[:ip].each do |ip|
          config.vm.network :private_network, ip: ip
        end
      else
        config.vm.network :private_network, ip: opts[:ip]
      end

      opts[:synced_folders].each do |hash|
        hash.each do |folder1, folder2|
          config.vm.synced_folder folder1, folder2, :nfs => true, :mount_options => ['nolock,vers=3,udp,noatime']
        end
      end

      config.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
        vb.customize ["modifyvm", :id, "--ioapic", "on"]
        vb.customize ["modifyvm", :id, "--memory", "2048"]
        vb.customize ["modifyvm", :id, "--cpus", "1"]   
      end

    end
  end
end
