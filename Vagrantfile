# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # A custom base box is used.
  # It has nginx, php-fpm and MySQL pre-installed.
  config.vm.box = "precise32_nginx_mysql_php-fpm"

  # Get the custom box from the SHOWstudio CDN if it hasn't already been downloaded.
  config.vm.box_url = "http://paulherron.com/boxes/precise32_nginx_mysql_php-fpm.box"

  # A shell script is run to pull in CakePHP, set up the 'showstudio' nginx config, etc.
  config.vm.provision :shell, :path => "app/config/vagrant/bootstrap.sh"

  # An internal IP for the virtual machine is specified.
  # You can add the following lines in /etc/hosts on your computer to map a "showstudio.l" domain to it:
  #
  #   showstudio.l  192.168.50.4
  #   www.showstudio.l  192.168.50.4
  # 
  config.vm.network "private_network", ip: "192.168.50.2"

  # CakePHP is rather disk-intensive and can run slowly.
  # You can uncomment the line below to enable NFS, which should speed things up.
  # At the moment this seems to break the initial build of the server. You may want to keep it disabled when you first do vagrant up, then enable it and do `vagrant reload`
  config.vm.synced_folder ".", "/vagrant", nfs: true

end
