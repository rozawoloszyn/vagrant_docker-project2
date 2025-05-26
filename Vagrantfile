Vagrant.configure("2") do |config|
  config.vm.provider "docker" do |d| # konfiguracja providera Dockera
    d.build_dir = "."
    d.name = "vagrant-docker-project2"
    d.has_ssh = false  # musiałam wyłączyć ssh, ponieważ kontenery docekra domyślnie nie mają ssh
  end

  config.vm.network "forwarded_port", guest: 8080, host: 8081 # przekierowanie
  config.vm.synced_folder ".", "/vagrant"
end
