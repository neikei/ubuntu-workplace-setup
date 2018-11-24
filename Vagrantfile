# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

# Detect host OS for different folder share configuration
module OS
    def OS.windows?
        (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
    end

    def OS.mac?
        (/darwin/ =~ RUBY_PLATFORM) != nil
    end

    def OS.unix?
        !OS.windows?
    end

    def OS.linux?
        OS.unix? and not OS.mac?
    end
end

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "peru/ubuntu-18.04-desktop-amd64"

  config.vm.provider "parallels"
  config.vm.provider "virtualbox"

  # Check available Plugins
  if OS.windows?
      if !Vagrant.has_plugin?('vagrant-winnfsd')
          puts "The vagrant-winnfsd plugin is required. Please install it with \"vagrant plugin install vagrant-winnfsd\""
          exit
      end
  end

  if Vagrant.has_plugin?('vagrant-vbguest')
      config.vbguest.auto_update = true
  end

  config.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.customize ['modifyvm', :id, '--memory', 2048]
      vb.customize ["modifyvm", :id, "--cpus", 2]
      vb.customize ["modifyvm", :id, "--name", "ubuntu-workplace-ansible"]
  end

  config.vm.provider "parallels" do |v|
      v.memory = 2048
      v.cpus = 2
  end

  # Configure the VM
  config.vm.hostname = 'ubuntu-workplace-ansible'
  config.vm.network :private_network, ip: "192.168.56.242"

  # Configure shared folder
  if OS.windows?
    config.vm.synced_folder ".", "/vagrant", type: "nfs"
  else
    config.vm.synced_folder ".", "/vagrant", :owner => "vagrant", :group => "vagrant"
  end

  # Test the provisioning
  config.vm.post_up_message = "Test the ansible playbook:\nStep 1: vagrant ssh\nStep 2: cd /vagrant && ./setup.sh\n"

end
