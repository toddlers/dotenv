Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  config.vm.define "box" do |box|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search

  box.vm.box = "ubuntu/bionic64"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.

  box.vm.network "private_network", ip: "192.168.33.11"
  box.vm.hostname = "box"
  box.ssh.forward_agent = true
  box.vm.provider "virtualbox" do |vb|

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:

     # Display the VirtualBOX GUI when booting the machine
     # vb.gui = true
     # customize the amount of memory on the VM:

     vb.memory = "1024"

   end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # Below we are using Vagrant shell provisioning
  # You can find more informatiom here(https://www.vagrantup.com/docs/provisioning/shell.html)

  # Bootstrap script for configuring VM
  box.vm.provision :shell, path: "bootstrap.sh"
  end
end
