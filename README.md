<h1 align="center">DevOps</h1>
<li>Devops is basically practice/culture that we follow in organization which will increase organization's ability to deliver the application. Which is the end goal of devops.</li>
<li>Delivery the new version (V1 -> V2) of software after the issue fixes is the devops.</li>
<li>End goal of Devops is improving efficiency.</li>
<li>Devops is improving the delivery software by automation</li>
<li>Monitoring the delivery of application.  when there is issue in quality/automation someone needs to report back to you that is monitoring</li>
<li>Testing the product to deliver</li>
<li>DevOps is the process of improving the delivery (Application/Script), making the delivery quicker by ensuring there is proper automation in the process and ensuring there is proper quailty and ensuring that you have set up proper continous monitoring and having continuous testing.</li>
<li>To automate the manual effort for deploy the application to production server. DevOps is introduced.</li>

<img width="100%" height="50" src="https://i.imgur.com/dBaSKWF.gif" /> 

### Manual Procedure of deploying the Application:
  - Developer/Developers build the application and put that in a central location from the central location system administrator / build and release engineer creates a server and deploy the application in server. Tester will test the application. After the testing the application Build and Release engineer will promote the Application to next level. either production server/pre-production server.
  - Centralised Code Repository:
      - CVS and SVN:-
          - CVS (Concurrent Version System) and SVN (Subversion) are both version control systems that are commonly used in software development projects to manage source code and other files. SVN is widely considered a more modern and advanced version control system than CVS. SVN supports branching and merging, atomic commits, and is more suitable for larger repositories.
          - In conclusion, CVS and SVN are both version control systems used to manage changes to software source code. However, SVN has some advantages over CVS.
          - <a href="https://www.tutorialspoint.com/difference-between-cvs-and-svn" target="_blank">To get more information about Centralised code Repository</a>
          - Bare metal hypervisation:
              - A bare metal hypervisor is a type of virtualization software that is installed directly on the hardware of the physical machine. The term bare metal refers to there is no operating system between the virtualization software and hardware.
  - Manual procedure roles:
    - System Administrator
    - Build and release engineer
    - Server Administrator

<img width="100%" height="50" src="https://i.imgur.com/dBaSKWF.gif" /> 

 # SDLC - Software Development Life Cycle:-
 - It is the standard procedure followed in an organization. Below are the main phases used in organization.
 - End goal is to deliver the high-quality application /product and meet the expectations of customer.
     
   <div align="center">
   <img src="Assets/DevOps-Lifecycle.png" height="350px" width="450px">
   </div>
   
### Plan:
- In this initial stage, the development team collaborates with stakeholders to define project goals, requirements, and plan the development process. This includes creating a roadmap, prioritizing features, estimating resources, and setting project timelines.
### Defining: 
- Clearly define the requirements in document. After researching in the planning stage, the collective information is documented as <b><i>Software Requirement Specification Document</i></b>. 
### Designing: 
- High Level Design / Low Level Design 
- Architect / senior development team design the code procedure.
### Develop:
- During this stage, developers write code based on the requirements and design specifications. DevOps teams emphasize the use of version control systems to manage code changes and ensure collaboration among developers. They also follow coding best practices and conduct code reviews to maintain code quality.
### Build:
- The build stage involves compiling the source code into executable binaries or artifacts. DevOps teams use build automation tools like Jenkins, Travis CI, or GitLab CI/CD to automate the build process. This ensures consistent and reproducible builds and enables continuous integration (CI) practices.
### Test:
- Testing is an integral part of the DevOps SDLC. DevOps teams perform various types of testing, such as unit testing, integration testing, system testing, and acceptance testing. Automated testing frameworks and tools are leveraged to enable continuous testing, allowing faster feedback on code changes.
### Deploy:
- The deployment stage involves deploying the built artifacts to the target environments, such as development, staging, and production. Infrastructure as Code (IaC) tools like Terraform or CloudFormation are used to define and provision the required infrastructure resources. Continuous deployment (CD) practices automate the deployment process, ensuring consistent and reliable deployments.
### Operate:
- Once the software is deployed, the operations team manages the running systems. Monitoring tools are employed to track system health, performance, and security. DevOps teams use log aggregation and analysis tools to proactively identify and resolve issues. They also focus on automating routine operational tasks, such as scaling, backup, and recovery, to reduce manual effort.
### Monitor:
- Continuous monitoring is crucial in a DevOps SDLC. Monitoring tools capture metrics, logs, and other relevant data to provide insights into the application's performance, usage, and user experience. Monitoring enables teams to detect anomalies, identify bottlenecks, and make data-driven decisions to improve the software.
### Iterate:
- DevOps promotes an iterative and incremental approach to software development. Based on feedback from users and stakeholders, the development team continuously improves the software by addressing bugs, adding new features, and optimizing performance. This feedback loop is crucial for delivering value and meeting customer expectations.
<img width="100%" height="50" src="https://i.imgur.com/dBaSKWF.gif" />
<h1 align="center">VM - Virtual Machine</h1>

<h3>What is Server?</h3>
   <li>Server is nothing but space where we deploy the application</li>
   <li>Developers create applications on a development server and then deploy them to a production server.</li>
<li>2024 cloud service providers are: </li>

  - Amazon Web Services (AWS)
  - Microsoft Azure
  - Google Cloud Platform (GCP)
  - IBM Cloud
  - Oracle Cloud
  - Alibaba Cloud
  - VMware Cloud
  - DigitalOcean
  - Rackspace
  - Tencent Cloud
<li><b>Example:</b> Companies like HP, IBM, and Microsoft sell physical servers with specifications such as 100GB RAM and 100 cores per processor.
However, purchasing a server with such high specifications when only a fraction of those resources are utilized, like using only 10GB RAM and 10 cores, leads to inefficiency.
This inefficiency is addressed by virtual machines.</li>

<h3>Virtual Machine</h3>
<li>Virtual machine is a virtualized computer that can perform most of the same functions as a computer</li>
<li>Physical server are bought from companies like: HP/IBM/Microsoft/Amazon</li>
<li>In physical server we install the hypervisor</li>
<li>A hypervisor is software that enables multiple instances of operating systems to run on the same physical computing resources.</li>
<li>We can do logical partition of 1 physical server into based on requirment</li>
<li>It is know as Logical Isolation</li>
<li>The partition done server are logical isolation which is VM's. example: [v1,v2,......vn] In one physical server</li>
<li>In this added efficiency using DevOps. By adding automated process by hypervisor</li>
<li>Popular Hypervisors are:</li>
  - Hyper-V
  - VMware
  - Xen

<h3>Here are some differences between physical and virtual machines:</h3>
<li><b>Performance:</b> Physical servers offer higher performance and computing power.</li>
<li><b>Scalability:</b> Virtual servers can be scaled up or down without purchasing additional hardware.</li>
<li><b>Cost:</b> Virtual servers can cost less to deploy than physical servers.</li>
<li><b>Space:</b> Virtual machines can run multiple operating system environments on a single physical computer, saving physical space.</li>
<li><b>Overhead: </b>Multiple systems can operate from the same console at the same time.</li>
<li><b>Safety net for data: </b>Virtual machines can be used for rapid disaster recovery and automatic backups.</li>
<li><b>Infrastructure costs:</b> Virtual machines can significantly reduce your financial outlay for hardware.</li>

<img width="100%" height="50" src="https://i.imgur.com/dBaSKWF.gif" /> 

## On-Premises:
- On-premises refers to IT infrastructure hardware and software applications that are hosted on-site, rather than in a public cloud platform or remote data center.
- On-premises software is installed and runs on computers on the premises of the person or organization using the software, rather than at a remote facility such as a server farm or cloud.
- On-premises software is sometimes referred to as "shrinkwrap" software, and off-premises software is commonly called "software as a service" ("SaaS") or "cloud computing." On-premises IT or data environment means that an enterprise must manage all resources on an ongoing basis, and there’s a periodic need to refresh, upgrade, and patch hardware and software systems.
- On-premises setups let companies handle their data and security steps directly.
- On-premises software is installed and runs on a company's own hardware infrastructure, and is hosted locally, whereas cloud software is stored and managed on the provider's servers, and accessed through a web browser or other interface.
