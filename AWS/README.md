<div align="center">
<img src="Assets/AWS.jpg">
</div>

<h3>Amazon Web Services (AWS) is a leading cloud service provider that offers a wide range of cloud computing services, including computing power, storage, databases, machine learning, and more. It enables businesses to build and deploy applications and services quickly and securely, without the need to invest in costly infrastructure. AWS is known for its scalability, reliability, and extensive global network of data centers.</h3>

- AWS/Azure is the cloud service providers.
- Whenever developer wants VM/EC2 from AWS/Azure or other cloud platforms, Developers go to AWS portal/Azure portal and request for VM. After requesting it will provide related specification details related to EC2/VM.
- If you require 100 Vm from cloud provider we can go cloud service provider platform 100 times, it is inefficient. 
- To make efficiency AWS provide EC2 API, to create storage AWS provide S3 AP.
- AWS peoples are built AWS EC2 API, now end-user directly going to AWS console/portal to request VM he can write script that he needs 10 EC2, by calling AWS EC2 API it will return the EC2 / VM.


### As Devops Engineer we can automate to create VM by:

- AWS CLI
- AWS API
- AWS CFT
- AWS CDK
- Terraform

<h4>AWS Management Console:</h4> 
  
  - Go to the EC2 dashboard in the AWS Management Console.
  - Click on "Launch Instance."
  - Follow the wizard to select an Amazon Machine Image (AMI), instance type, configure networking, storage, security groups, and other settings.
  - Review and launch the instance.

<h4>AWS Command Line Interface (CLI):</h4> You can use the AWS CLI to launch EC2 instances programmatically or via the command line interface. This allows for automation and scripting of instance creation.

```aws ec2 run-instances --image-id <AMI ID> --instance-type <Instance Type> --key-name <Key Pair Name> --subnet-id <Subnet ID>```

#### The AWS API allows you to programmatically interact with AWS services. You can use any programming language that supports HTTP requests to make API calls to AWS and automate the creation of VMs.

**Example** (Python using Boto3):
``` py
import boto3

ec2 = boto3.client('ec2')

response = ec2.run_instances(
    ImageId='<AMI ID>',
    InstanceType='<Instance Type>',
    KeyName='<Key Pair Name>',
    SubnetId='<Subnet ID>'
)

```
#### AWS Cloud Formation Template:
AWS CloudFormation is a service that allows you to define your infrastructure as code using templates. You can use CloudFormation templates to describe the resources you want to provision, including VMs, and AWS will handle the provisioning and management of those resources.


**Example** CloudFormation Template (YAML):
``` yaml
Resources:
  MyInstance:
    Type: AWS::EC2::Instance
    Properties:
      ImageId: <AMI ID>
      InstanceType: <Instance Type>
      KeyName: <Key Pair Name>
      SubnetId: <Subnet ID>
```

      
#### AWS Cloud Development Kit:
AWS CDK is an infrastructure as code framework that allows you to define your AWS infrastructure using familiar programming languages like TypeScript, Python, and Java. You can use CDK constructs to define VMs and other resources and deploy them using AWS CDK.
**Example** Cloud Development Kit: (Python)
``` py
from aws_cdk import core
import aws_cdk.aws_ec2 as ec2

class MyEC2Stack(core.Stack):

    def __init__(self, scope: core.Construct, id: str, **kwargs) -> None:
        super().__init__(scope, id, **kwargs)

        # Create a VPC
        vpc = ec2.Vpc(self, "MyVPC", max_azs=3)

        # Create an EC2 instance
        instance = ec2.Instance(self, "MyInstance",
            instance_type=ec2.InstanceType.of(ec2.InstanceClass.BURSTABLE2, ec2.InstanceSize.MICRO),
            machine_image=ec2.MachineImage.latest_amazon_linux(),
            vpc=vpc
        )

        # Tag the instance
        core.Tags.of(instance).add("Name", "MyInstance")

app = core.App()
MyEC2Stack(app, "MyEC2Stack")
app.synth()

```

#### Terraform:
Terraform is an open-source infrastructure as code tool created by HashiCorp. It allows you to define and provision infrastructure using a declarative configuration language. You can use Terraform to define VMs and their configurations and manage them as code.

**Example** Terraform (.tf):
``` tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
  profile = "jack.roper"
}

resource "aws_instance" "example_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"

  tags = {
    Name = "JacksBlogExample"
  }
}
```
<img width="100%" height="50" src="https://i.imgur.com/dBaSKWF.gif" /> 

## Open Instance from Terminal (Mobaxterm)

## Initial Setup
1. Open your terminal (Mobaxterm).

## Accessing AWS Instance
2. Run the following command:
    ```bash
    ssh -i "path_of_.pem_file" ubuntu@<public_ipv4_address>
    ```
    - You'll be prompted to verify the fingerprint. Type 'yes'.
    - If you encounter a permission denied error, proceed with the next step.

3. Ensure the permissions of the `.pem` file are restricted:
    ```bash
    chmod 600 "path_of_.pem_file"
    ```

4. Try logging in again:
    ```bash
    ssh -i "path_of_.pem_file" ubuntu@<public_ipv4_address>
    ```

## Checking Status and Managing Instance
5. Use `htop` command to check the system status.

6. Use `ec2metadata` to retrieve detailed information about the instance.

7. To stop the instance, use:
    ```bash
    sudo shutdown -h now
    ```

**Note**: Ensure to replace `"path_of_.pem_file"` and `<public_ipv4_address>` with actual values.


| Command        | Sub command  | Description                                                                                     |
|----------------|--------------|-------------------------------------------------------------------------------------------------|
| ls             |              | `ls` command is used for listing the directories in the present working directory              |
|                | `ls -la`     | `ls -la` will show all hidden files, e.g. `.ssh`                                                |
|                | `ls -l`      | It will show the count and details of files                                                     |
| man            |              | `man` command gives documentation of the mentioned command, e.g.: `man ls`                      |
| cd             |              | It is used to navigate the directory                                                            |
| touch \<file name> |          | It will create the file                                                                         |
|                | `touch file(1..20).txt` | It will create 20 files, e.g.: `file1`, `file2`, ..., `file20`                                 |
| mkdir <folder/dir name> |      | Used to check the present working directory                                                     |
| clear          |              | Used to clear the screen                                                                         |
| mkdir <folder/dir name> |      | Used to create a folder/directory                                                               |
|                | `mkdir -p <foldername1/foldername2>` | This command is used to create a folder/directory inside the directory                |
| cat \<file name> |            | It is used to display the data inside the file                                                  |
|                | `cat > file1.txt` | It allows you to append data by terminal to file                                               |
|                | `cat >> file1.txt` | It allows you to append another data to the file                                                |
| cp \<filename> \<path> |        | Copy the file from one location to another location                                              |
| mv \<filename> \<path> | path = /home/ubuntu/folder1 | Moves file from one location to another location                                        |
|`mv options <oldfilename> <newfilename>` | Options = `-v` (verbose) | Rename the file |
| rm \<filename>  |              | Removes the file                                                                                 |
|                | `rm -rf <foldername>` | Removes a folder having content                                                                 |
|           |       rmdir       | Deletes the folder if it is empty                                                                |
| who            |              | - It is used to show the logged-in user in the server                                           |
|                |              | - It shows login time and information about the terminal                                         |
| whoami         |              | It will display the logged username. No other details will be shown                              |
| w              |              | This command is used for all login user information in the server                                |
| id             |              | This command is used to get the information of the user ID and group ID of the logged-in user    |
| echo           |              | This command is used to display the message in the terminal                                      |
|                | `echo $SHELL` | It will display which environment variable is being used                                          |
| printenv       |              | Prints all the environment variables in the server                                               |
| uname          |              | Display the OS name                                                                              |
|                | `uname -a`    | Display more details of the OS like IP address, distribution name                                |
| ln             |              | - This command is used to create a link in the Linux operating system                             |
|                |              | - While file details are started by `-`, it is a normal file                                      |
|                |              | - If it is started by `l -> lrwxrwxrwx`, it is a link file                                        |
|                |              | - If it is started by `b -> block file`                                                          |
|                | `ln -s <existingfilename> <filename>` | Filename will be linked to the existing filename                                       |
| less           |              | To display the file output in a paginated manner                                                 |
|                |              | - If you want to go to the last page, use `b`                                                     |
|                |              | - If you want to go line by line, you can use the Enter key                                       |
|                |              | - For exiting from the page, use `q`                                                              |
| more           |              | - Similar to `less` command but cannot go backward                                                |
| head           |              | This command will display the top 10 lines by default                                             |
|                | `head -n 20 /etc/passwd` | If you want to display lines as you want, use `-n`. e.g.: `cat -n /etc/passwd | head -n 20` |
| tail           |              | This command will display the bottom 10 lines by default                                          |
|                | `tail -n 20 /etc/passwd` or `tail -20 /etc/passwd` | We can display bottom lines as you want |
|                | `cat -n /etc/passwd \|head -n 20 \|tail -n 7` | If you want to get the middle lines      |
| grep \<value> \<filename> |    | Grep command is used to fetch the values by matching pattern                                     |
|                | `grep -i <value> <filename>` | This command is used to fetch value if it is uppercase/lowercase character by matching pattern |
| df             |              | Df command is used to check disk space/free space available                                       |
|                | `df -h`       | It will display in an understandable format (shows `480M`)                                        |
| du -sh /home/  |              | Display the disk usage of a particular folder                                                     |
| whereis ls     |              | Display the binary location of any command                                                        |
| hostname       |              | Check the hostname of the server                                                                  |
| wget \<url>     |              | Download the binary or files from the internet using `wget http://file.txt.com/download/`         |
| curl https://www.google.com | | Curl command is used to send/transfer the data to the server                                       |
| sudo           |              | To get the root privileges                                                                       |
| ps             |              | Ps command is used for displaying the running processes                                           |
|                | `ps -aux`     | Display all processes which are running                                                           |
| kill -pid      |              | It is used to kill the process which is running. e.g.: `kill -9` here `9` is the process ID (PID) |
| ifconfig       |              | - Get information about Ethernet card.                                                            |
|                |              | - To run this command, install `net-tools`: `sudo apt install net-tools`                           |
|                | `ifconfig <ethernet name>` | If you want to display 1 ethernet details. e.g.: `ifconfig eth0`                               |
| date           |              | Get the date and time from the server                                                             |
| tree /home/    |              | - Used to display the output in a tree format. Displays the folder structure in a tree format      |
|                |              | - Install `tree` command to execute: `sudo apt install tree`                                       |
| route          |              | To display the route table and to set up default gateway in the Linux server                       |
| alias d="du -sh" |            | It is used to make the command-line interface more user-friendly. It
