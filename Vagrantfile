Vagrant.configure("2") do |config|
  config.vm.synced_folder "puppet/manifests", "/puppet"
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.provision :shell, path: "bootstrap_scripts/install_utilities.sh"
  config.vm.box = "bento/centos-7"

  config.vm.define "grafana" do |grafana|
    grafana.vm.hostname = 'grafana'
    grafana.vm.network :private_network, ip: "13.13.13.10"
    grafana.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "grafana"]
	  v.customize ["modifyvm", :id, "--cpus", 1 ]
    end
    grafana.vm.network "forwarded_port", guest: 3000, host: 3000
	grafana.vm.network :forwarded_port, guest: 22, host: 1310, id: "ssh"
    grafana.vm.provision :shell, path: "bootstrap_scripts/grafana.sh"
  end

  config.vm.define "prometheus" do |prometheus|
    prometheus.vm.hostname = 'prometheus'
    prometheus.vm.network :private_network, ip: "13.13.13.11"
    prometheus.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "prometheus"]
	  v.customize ["modifyvm", :id, "--cpus", 1 ]
    end
	prometheus.vm.network :forwarded_port, guest: 22, host: 1311, id: "ssh"
	prometheus.vm.provision :shell, path: "bootstrap_scripts/prometheus.sh"
  end

  config.vm.define "virtual1" do |v1|
    v1.vm.hostname = 'virtual1'
    v1.vm.network :private_network, ip: "13.13.13.12"
    v1.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "virtual1"]
	  v.customize ["modifyvm", :id, "--cpus", 1 ]
    end
	v1.vm.network :forwarded_port, guest: 22, host: 1312, id: "ssh"
	v1.vm.provision :shell, path: "bootstrap_scripts/virtuals.sh"
  end

  config.vm.define "virtual2" do |v2|
    v2.vm.hostname = 'virtual2'
    v2.vm.network :private_network, ip: "13.13.13.13"
    v2.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "virtual2"]
	  v.customize ["modifyvm", :id, "--cpus", 1 ]
    end
	v2.vm.network :forwarded_port, guest: 22, host: 1313, id: "ssh"
	v2.vm.provision :shell, path: "bootstrap_scripts/virtuals.sh"
  end

  end
