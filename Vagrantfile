Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"  # lub inna wersja Ubuntu

  # Udostępnienie folderu projektu do VM
  config.vm.synced_folder ".", "/home/vagrant/vagrant-docker-project2"

  # Provisioning - uruchomienie skryptu instalującego Docker i aplikację
  config.vm.provision "shell", path: "provision.sh"

  # Mapowanie portu 8080 VM na port 8080 hosta Windows
  config.vm.network "forwarded_port", guest: 8080, host: 8081

end
