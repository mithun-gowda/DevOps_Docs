<h1 align="center">Shell Scripting</h1>


## Why Shell scripting is usfull for devops engineer? 

- With shell scripting, DevOps engineers can write scripts to automate tasks such as installing software packages, configuring systems, setting up network connections, and managing files and directories. 
- To automate the process it required 
- John is working as devops engineer in amazon, and amazon is having 10000 vm, where he want to monitor node health of each vm, so checking manually is not efficient way, in that case shell script is used, after automating the script john will recieve the mail that ---> hey john, 10 vm are suspicious [5 cpu are gone out, 5 vm are out of memory] this will be one of the use case of devops engineer 
- There are automation tools available in market, but shell scripting is basic every company used some companies use automation tool rather than shell script

<img width="100%" height="50" src="https://i.imgur.com/dBaSKWF.gif" /> 

## Metadata
```bash
############ 
Author: Mithun Gowda 
Date: 31/01/2023 
Version: v1 
############
```
<img width="100%" height="50" src="https://i.imgur.com/dBaSKWF.gif" /> 

## Shell Scripting Basics

- **Print Command:** Use `echo` to print.
- **Execution Trace:** Use `set -x` to trace/debug command execution, it will mention command and give output of perticular command.
- **Display particular process:** `ps –ef | grep “amazon”` 
- **Process Display:** Use `ps –ef` to display running processes.
- **Retrievel of process ID:** `ps –ef | grep`
- **Retrievel of Perticular column (AWK):** Use `ps –ef | grep "process_name" | awk –F “ ” '{print $2}'`
- **Example:** `grep name myfile.sh | awk –F" “ ‘{print $4}’` 
- **Metadata Setting:** Use `set –e` for error handling.
- **Command Execution Display:** Use `set –o` pipefail to display the command being executed.
- **URL Retrieval:** Use `curl` command.
  - **example:**  `curl https://www.ibm.com/docs/en/zos/2.1.0?topic=problems-example-log-file | grep ERROR/INFO` (to list Errors or Info)

<img width="100%" height="50" src="https://i.imgur.com/dBaSKWF.gif" /> 

## File Operations

- **Download with Curl:** `curl https://example.com -o filename`
- **Whole api details retrieval:** `curl –X GET www.google.com` 
- **Download with Wget:** `wget https://example.com`
- **Sort files:** `sort`
- **File Encryption:** `shred filename.txt`
- **File Copy:** `cp filename destination`
- **File Move:** `mv filename destination`
- **File Removal:** `rm filename or rm –r directoryname`
- **Zip folder:** `zip foldername`
- **unzip folder:** `unzip foldername`
- **compare files:** `compare file1 file2`
- **difference of files:** `diff file1 file2`
- **search file:** `sudo find / -name "filename"`
- **Find all hidden files:** `sudo find . -type f -empty`
- **Find all executable files:** `find . -perm/a=x`
- **Direct execution:** `chmod +x filename.sh`
- **Change ownership of dir/file:** `chown username filename`
- **Read mode:** `vim -r text.sh`

<img width="100%" height="50" src="https://i.imgur.com/dBaSKWF.gif" /> 

## User Management

- **SUDO**: Substitute User Do
- **Switch to Root:** `sudo su -`
- **Switch User:** `su user-name`
- **Create User:** `sudo useradd username`
- **Change Password:**   `sudo passwd username`
- **Tells brief about user:** `uname -a`
- **Tells name of the user** `uname`
- **Diagrammatic representation of the uname:** `neafetch` (before it install sudo apt install neofetch)
- **Back to last user:** `exit`

<img width="100%" height="50" src="https://i.imgur.com/dBaSKWF.gif" />   

## Network Operations

- **Check IP Address:** `ifconfig` or `ip address`
- **Check DNS Server:** `cat /etc/resolv.conf` or `resolvectl status`
- **Ping:** `ping website.com`
- **Gives the count of the list:** `ping –c 5 instagram.com`
- **Gives the size of the package:** `ping –c 5 –s 500 instagram.com`
- **Traceroute:** `traceroute website.com`
- **See ethernet address:** `ip address | grep eth0`
- **Only the perticular line:** `ip address | grep eth0 | grep inet`
- **Particular word will display:** `ip address | grep eth0 | grep inet | awk ‘{print $2}’`
- **Allows you form firebase:** `sudo Ufw allow 80`
- **Gives the status:** `sudo ufw status`
- **Enables you from the inactive:** `sudo ufw enable`

<img width="100%" height="50" src="https://i.imgur.com/dBaSKWF.gif" /> 

## Service Management

- **bc gives the output:** `ech0 “4+5+6+7” | bc` 
- **Start/Stop Service:** `sudo systemctl start/stop service_name`
- **Enable/Disable Service:** `sudo systemctl enable/disable service_name`

<img width="100%" height="50" src="https://i.imgur.com/dBaSKWF.gif" /> 

## System Management
**Reboot:** `sudo reboot`
**Shutdown:** `sudo shutdown –h now`

<img width="100%" height="50" src="https://i.imgur.com/dBaSKWF.gif" /> 

## Conditional Statements
```bash
if [expression]; then
  echo "Print something"
else
  echo "Print something"
fi
```

<img width="100%" height="50" src="https://i.imgur.com/dBaSKWF.gif" /> 

## Other Useful Commands

- **Process Management:** `ps`, `htop`
- **Calender:** `cal`
- **Executed output in better readable view:** `./file1.sh | more `
- **Kill the process:** `Kill –9 java` / `kill –9 11111 `
- **File Comparison:** `cmp`, `diff`
- **Find Command:** `sudo find / -name "filename"`
- **File Permissions:** `chmod`
- **System Information:** `uname`, `neofetch`
- **System Shutdown:** `sudo shutdown`
- **Word Count:** `x="mississippi" grep –o "s" <<<"$x" | wc –l or cat file.txt | wc –l` (it wil display lines)
- **Crontab:** Schedule tasks using crontab `-e`
- **Network Troubleshooting:** Use `traceroute` or `tracepath`  (to check why my network is slow)
- **Log Management (To manage logs of a system that generates huge log files everyday):** Use `logrotate` 
- **Iterations:** Use for loops
**Example:**
```
for((i=1; i<=100; i++); do
echo $i;
done 
```
- **Signal Trapping:** Use `trap` command

<img width="100%" height="50" src="https://i.imgur.com/dBaSKWF.gif" /> 

## AWS Commands

- **Describe Instances:** `aws ec2 describe-instances`
- **Filter Output with JQ:** `jq '.reservations[].instances[].instanceId'`   (will provide only intance id. Jq is for json file and yq for yaml file.)

<img width="100%" height="50" src="https://i.imgur.com/dBaSKWF.gif" /> 

## Interview question:
`Date | echo “this is system default command”`

  - Here date is the system default command, it sends output to stdin, (stdout, stderr) then pipe (|) will not be able to receive the output from the stdin.  pipe will able to receive the output if the left side expression is not sending output to stdin. 

