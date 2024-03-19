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
# Part - B
# Part - C

- To check error in vagantfile / Validate
`vargant validate`
- Also you can check format in <a href="https://codebeautify.org/ruby-formatter-beautifier">