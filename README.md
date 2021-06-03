## prjct-13
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Network Diagram](prjct-13/Diagrams_/Rteam-Vnet.pdf)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the container file may be used to install only certain pieces of it, such as Filebeat.

![Filebeat installation](prjct-13/Ansible_/filebeat-install.yml)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build

454
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
| Jump Box | Yes                 | 191.96.109.6         |
| ELK      | Yes                 | 191.96.109.6         |


### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because automating configuration with Ansible makes it easily accessible.

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- 
- 

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](images/dockerps.jpg)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.4, 10.0.0.5, 10.0.0.6

We have installed the following Beats on these machines:
- Filebeat & Metricbeat

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the ansible-config file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
$ ansible-playbook 
$ 