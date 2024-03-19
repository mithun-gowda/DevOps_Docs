### Vagrant Install

<a href="https://developer.hashicorp.com/vagrant/install" > Install vagrant </a>

### check Installation done 
`vagrant --version`
### Select a VM Provider. Vagrant has direct support for:
`VirtualBox, Hyper-V, Docker`
### Download Virtual Box:
<a href="https://www.virtualbox.org/wiki/Downloads"> Install virtual box </a>
### Check Version:
`vboxmanage --version`
### Create new folder for Vagrant project
`vagrant`

### ON terminal or command line navigate to the folder and initiate vagrant project 
`vagrant init`  vagrant file will be created inside the folder 

- Vagrantfile is a configuration file that defines the settings for your virtual machine

### Choose a box to use 
<a href="https://app.vagrantup.com/boxes/search"> search box (vagrant cloud) </a>
- A box is a pre-configured virtual machine image that you can use as a starting point for your virtual machine

### Add configuration of the box in vagrantfile
- select box e.g: `ubuntu` open and copy `config.vm.box = "ubuntu/trusty64"`
- Paste config in vagrantfile and save

### We can also directly add configuration for the virtual machine using the following commands
`vagrant init centos/7`

### Start virtual machine using command:
`vagrant up`
- This will create a new virtual machine using the box you selected and start it. The first time, Vagrant will download the box from the internet.

### Check Vagrant list in CMD
`vagrant box list` enter <br>
result: `ubuntu/trusty64 (virtualbox, 20190514.0.0)`

### SSH into the virtual machine 
`vagrant ssh` enter<br>
result: `vagrant@vagrant-ubuntu-trusty-64:~$`<br>
result:
`vagrant@vagrant-ubuntu-trusty-64:/home/ubuntu$ cd ..`<br>
`vagrant@vagrant-ubuntu-trusty-64:/home$ ls`<br>
`ubuntu  vagrant`

### Shutdown virtual machine 
`vagrant halt`

### If using VirtualBox 
`vboxmanage list vms`<br>
`vboxmanage list runningvms`

<img scr="vagrent/Vagrant Project/Assets/Vagrant1.png" alt="vagrant"> 
