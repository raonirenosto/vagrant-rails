Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/vivid32";
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.provision :shell, path: "install-rails.sh"
  config.vm.provision :shell, path: "install-tools.sh"
end
