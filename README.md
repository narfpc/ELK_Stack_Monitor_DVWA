## DVWA-1
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Diagram](https://github.com/narfpc/Ansible/blob/main/images/red-topol.png?raw=true)


These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the container file may be used to install only certain pieces of it, such as Filebeat.


![Filebeat](https://github.com/narfpc/Ansible/blob/main/images/filebeatt.PNG?raw=true)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build

### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

- Load balancing ensures that the application will be highly efficient, in addition to restricting access to the network. Load balancers enhance security by distributing network traffic to prevent failure caused by overloading a specific resource, in addition to preventing possible DDos attacks. A jump box is used to connect to initially before any administrative task. They would be used to connect to specific servers or non-secure environments. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _____ and system _____.
- Filebeat logs information about the file system, including which files have been altered and when.
- Metricbeat 

The configuration details of each machine may be found below.
+

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.1.0.7   | Ubuntu 18.04     |
| Web1     | DVWA     | 10.1.0.4   | Ubuntu 18.04.1   |
| Web2     | DVWA     | 10.1.0.9   | Ubuntu 18.04.1   |
| Web3     | DVWA     | 10.1.0.8   | Ubuntu 18.04.1   |
| ELK      |          | 10.4.0.4   | Ubuntu 20.04.2   |

### Access Policies

The machines on the internal network are restricted from traffic via ssh through the Jump Box but are publicly 
available through HTTP/S traffic. 

Only the Elk machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: 20.52.104.42


Machines within the network can only be accessed by the Jump Box.
Web 1,2,3 had access to ELK Server VM - 10.4.0.4

A summary of the access policies in place can be found in the table below.
For security precautions, SSH traffic to Jump Box and ELK servers are only accessible from the local machine.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | localhost            |
| ELK      | Yes                 | localhost            |


### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because automating configuration with Ansible makes it easily accessible.

The playbook implements the following tasks:
- Downloads and configures elk-docker container onto new VM
- Installs packages: Docker.io, python3-pip
- Enables the docker service on boot
- Once completed, you're able to launch the elk-docker & deploy the ELK server
- Data and log visualization through Kibana <elk-ip>:5106 

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![dockerps](https://github.com/narfpc/Ansible/blob/main/images/dockerps.JPG?raw=true)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.1.0.4, 10.1.0.8, 10.1.0.9

We have installed the following Beats on these machines:
- Filebeat & Metricbeat

These Beats allow us to collect the following information from each machine:
- Metricbeat collects Kibana monitoring data
- Filebeat is a lightweight shipper for centralizing log data

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy hosts.yml and install-elk.yml to the ansible container.
- Update the ansible-config file to include the remote username and hosts.yml to include the Web-VM IP's.
- Run the playbook, and navigate to the Elk server to check that the installation worked as expected.
- The playbooks are located in the /etc/Ansible directory. 
- To confirm the ELK server is running, you'd navigate to <elk-IP>:5106 on your browser
