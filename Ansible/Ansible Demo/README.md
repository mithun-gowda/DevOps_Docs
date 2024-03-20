# Ansible Demo Project
<img src="../Assets/demo.png"> <br>

# Part - A
- Install VirtualBox and Vagrant on your local machine
- Open a terminal and navigate to the directory where you want to setup your Ansible project.
- Create a new directory for your Ansible controller VM by running the command
 `mkdir ansible-controller`
- Navigate to the directory and create a new file called Vagrantfile by running the command 
`vagrant init centos/7`
- Edit the Vagrantfile and add the following lines to the end of the file to provision Ansible on the VM.
    ```ruby 
    Vagrant.configure("2") do |config|
    config.vm.define "ansible-controller" do |controller|
        controller.vm.hostname =boo = "controller"
    end
    config.vm.box = "centos/7"
    config.vm.provision "shell", inline: <<-SHELL
        sudo yum install epel-release -y
        sudo yum install ansible -y
    SHELL
    end
    ```
-  Save & check its a valid vagrantfile `vagrant validate` Then run command `vagrant up` to start the VM 
- Once  the VM is up and running, connect to it using SSH by running the command vagrant ssh
- Create a new directory for your Ansible project on the controller VM by running the command 
`mkdir ansible-project`
- Navigate to the `ansible-project` directory and create a neew file called hosts by running the command `touch hosts`
- Create a new file called `playbook.yml`. This file will contain the tasks you want to perform on your managed hosts As of now hosts and the playbook file are empty
    - We will now create some host machine that will be controlled by the Ansible controller


# Part - B (Ansible Host machine setup)

- Exit from Controller 
- On terminal navigate to your Ansible project folder
- create a new directory for your host machines by running the command `mkdir host-machines`
- Navigate to host-machines directory and create a new Vagrantfile by running the command `vagrant init centos/7`
- Edit the Vagrantfile and modify the following lines to set up two Vagrant machines.
```ruby
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  
  config.vm.define "web" do |web|
    web.vm.hostname = "web"
    web.vm.network "private_network", ip: "192.168.33.10"
  end
  
  config.vm.define "db" do |db|
    db.vm.hostname = "db"
    db.vm.network "private_network", ip: "192.168.33.11"
  end
  config.vm.network "forwarded_port", guest: 80, host: 8080, auto_correct: true
  config.vm.usable_port_range = (8000..9000)
end 
```
- Save and check its a valid vagrantfile `vagrant validate` Then run command `vagrant up` to start the VM.
- Check the status of machines `vagrant status`
   - Once the VMs are up connect to them using SSH `vagrant ssh<machine-name>`  e.g: `vagrant ssh web` 
   - This completes the process of setting up host machines.


# Part - C (Making connection between controller and host machines)

- Make sure all machines are up and running
- Run command `ip addr` on each machine and check they have IP addresses in the same range (e.g: 192.168.33.x)
- In Ansible-controller terminal `vargant ssh`
- On controller machine run the command `ssh-keygen` to generate an SSH key pair.
- `cd ~/.ssh/` you see the public and private generated keys
- Copy the public key to the host machines by runnig the command `ssh-copy-id <user>@<host>`
- Example: to copy the public key to the web machine, run the command `ssh-copy-id vagrant@192.168.33.10`


- To check error in vagantfile / Validate
`vargant validate`
- Also you can check format in <a href="https://codebeautify.org/ruby-formatter-beautifier">