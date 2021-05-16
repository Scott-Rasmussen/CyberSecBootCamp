# CyberSecBootCamp
Repository of Boot Camp Projects

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![](https://github.com/Scott-Rasmussen/CyberSecBootCamp/blob/main/diagrams/AZURE_Cloud_Updated.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the "playbook".yml file may be used to install only certain pieces of it, such as Filebeat.

* [pentest.yml](ansible/pentest.yml): used to create DVWA servers
* [install-elk.yml](ansible/install-elk.yml): used to create ELK Stack Server
* [filebeat-playbook.yml](ansible/filebeat-playbook.yml): used to download & install filebeat on network servers & to provide Kibana data.
* [metricbeat.yml](ansible/metricbeat.yml): used to download & install metricbeat on network servers & to provide Kibana data.

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the Damn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
With respect to the Accesibility leg of the CIA Triad, the load balancer ensures avaibiity of the servers during high volume usage
while the load balancing pool creates a redundancy net in case of server failure.  

The Jump-Box within the network serves as an administrative portal to the servers.  Security rules have been enabled that allow for
only one IP to acceess it externally.  This ensures a more secure network and helps satisfy the Integrity leg of the CIA Triad.  

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system traffic.
- Filebeat monitors the log files or locations specified by the user, collects log events, and forwards them either to Elasticsearch 
  or Logstash for indexing.
- Metricbeat periodically collect metrics from the operating system and from services running on the server.

The configuration details of each machine may be found below.

| Name                | Function          | IP Address | Operating System |
|---------------------|-------------------|------------|------------------|
| JumpBoxProvisioner  | Gateway           | 10.1.0.4   | Linux (18.04 LTS)|
| ELK1                | ELK Stack         | 10.0.0.4   | Linux (18.04 LTS)|
| WEB-1               | Server/Docker/DVWA| 10.1.0.7   | Linux (18.04 LTS)|
| WEB-2               | Server/Docker/DVWA| 10.1.0.6   | Linux (18.04 LTS)|
| WEB-3               | Server/Docker/DVWA| 10.1.0.8   | Linux (18.04 LTS)|     
| WEB-3               | Server/Docker/DVWA| 10.1.0.8   | Linux (18.04 LTS)|         
| DVWA-VM3            | Server/Docker/DVWA| 10.2.0.8   | Linux (18.04 LTS)|
| DWVA-VM4            | Server/Docker/DVWA| 10.2.0.9   | Linux (18.04 LTS)|


### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the JumpBoxProvisioner machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 68.XXX.XX.XX (personal IP address)

Machines within the network can only be accessed by SSH (Port 80).
- The ELF Stack is only accessable from JumpBoxProvisioner with a private IP address of 10.1.0.4.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses      |
|----------|---------------------|---------------------------|
| Jump Box | No                  | 68.XXX.XX.XX (Personal IP)|
|  ELK1    | No                  | 10.1.0.4                  |
| WEB-1    | Yes- Load Balancer  | LB:104.40.75.217          |
| WEB-2    | Yes- Load Balancer  | LB:104.40.75.217          | 
| WEB-3    | Yes- Load Balancer  | LB:104.40.75.217          |     
| DVWA-VM3 | Yes- Load Balancer  | LB:104.40.75.217          |
| DWVA-VM4 | Yes- Load Balancer  | LB:104.40.75.217          |         

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
-What is the main advantage of automating configuration with Ansible?
  - The main advanrtage of automating configuration with Ansible is that users are able to configure multiple machines using a single file as Infrastucture as Code

The Install-Elk playbook implements the following tasks:
- Installs Docker.io
- Installs python3-pip
- Increases the virtual memory
- Installs the ELK Docker container
- Enables the docker service on boot


The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![](https://github.com/Scott-Rasmussen/CyberSecBootCamp/blob/main/Images/docker%20ps.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?
- The Ansible hosts file located at /etc/ansible/hosts allows the user to deisignate if a machine is a Webserver or ELK Stack (or others) and then within the paybooks the user can designate which host to run on.

![](https://github.com/Scott-Rasmussen/CyberSecBootCamp/blob/main/Images/hosts%20screenshot.png)

Which URL do you navigate to in order to check that the ELK server is running?
- ELK_Public_IP:5601

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
