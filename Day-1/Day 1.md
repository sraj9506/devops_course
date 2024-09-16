### **Comprehensive Linux Operations**
#### <a name="_65of7ssrciix"></a>**Project Overview**
This project spans various aspects of Linux system administration, including file management, user and group management, service control, process handling, and more. You will be completing tasks that simulate real-world scenarios, providing hands-on experience with Linux commands and configurations.
### <a name="_y9vv0q3kjfaw"></a>**Project Breakdown**
#### <a name="_utnth48bvqij"></a>**Part 1: Creating and Editing Text Files (20 minutes)**
**Scenario:** You are tasked with documenting the configurations and settings for a new server. You'll use different text editors to create and update these documents.

**Using Nano**

Create a file server\_config.txt using Nano and Add the Content :

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.001.png)

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.002.png)         

Save and exit (Ctrl+O, Enter, Ctrl+X).

**Using Vi**

Edit the same file with Vi and Append the text:

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.003.png)

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.004.png)

Save and exit (Esc, :wq).

**Using Vim**

Further edit the file with Vim and Append the text:

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.005.png)

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.006.png)

Save and exit (Esc, :wq).
#### <a name="_c6mmwlig0kga"></a>**Part 2: User & Group Management (20 minutes)**
**Scenario:** You need to set up user accounts and groups for a new team joining the project.

We need to use sudo in these commands because user and group management requires root user permissions.

**Adding/Removing Users**

Add a new user developer:

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.007.png)

Remove the user developer:

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.008.png)

**Managing Groups**

Create a group devteam:

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.009.png)

Add the user developer to the devteam group:

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.010.png)**	

**Remove the user developer from the devteam group:**

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.011.png)
#### <a name="_6371f4k4jzmj"></a>**Part 3: File Permissions Management (20 minutes)**
**Scenario:** Ensure that only the appropriate users have access to specific files and directories.

 **Understanding File Permissions**

Here we view permissions for server\_config.txt:

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.012.png)	

Here rw is for user which means owner has read and write access.

Here rw for second place belongs to group which has read and write 	access.

Here r for third place belongs to others which has read access.

**Changing Permissions and Ownership**

Change permissions to read/write for the owner and read-only for others:

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.013.png)

Here 644 means 6 refers to the read write access for the owner .

4 refers to the read only access for group.

4 refers to the read only access for others.

Change the owner to developer and the group to devteam:

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.014.png)

#### <a name="_idl5kovermok"></a>**Part 4: Controlling Services and Daemons (20 minutes)**

**Scenario:** Manage the web server service to ensure it is running correctly and starts on boot.

We use systemctl command which is responsible for manage services.

**Managing Services with systemctl**

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.015.png)

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.016.png)	

Before we start the service we need to install apache first which is illustrate through 	above commands where we first update package list and then install apache2.

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.017.png)

Then First we Start the Apache service

Then Stop the Apache service.

Then Enable the Apache service to start on boot.

Then Disable the Apache service.

Then check the status of the Apache service.

**Understanding Daemons**

Discuss the role of the sshd daemon in providing SSH access to the server.

#### <a name="_h6sjqyetmqax"></a>**Part 5: Process Handling (20 minutes)**
**Scenario:** Monitor and manage processes to ensure the server is performing optimally.

**Viewing Processes**

List all running processes.

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.018.png)

Use top to view processes in real-time.

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.019.png)

**Managing Processes**

Identify a process to kill using ps or top, then kill it:

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.020.png)

Here we kill firefox.

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.021.png)

Here sleep 100 means system pauses for 100 seconds and this & send this 	command for background processing and by using nice command we set the low 	priority which means os provides less cpu time to it.

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.022.png)

Here we change priority using renice and +10 means we set priority of process to 10.

The range of priority is -20 (highest) and +19 (lowest).

### <a name="_5g7gldyox9g4"></a>**Creating and Deploying a Static Website with Apache2**
#### <a name="_vvakelssuj5f"></a>**Preparation (5 minutes)**
Ensure you have access to a Linux environment (e.g., virtual machines, EC2 instances, or local installations) with sudo privileges.
### <a name="_rwgkc42i3s1"></a>**Activity Breakdown**
#### <a name="_wbakvhm0k2wk"></a>**Part 1: Installing Apache2 (5 minutes)**

This is already shown in Part 4.
#### <a name="_agiuof3yu2db"></a>**Part 2: Creating the Website (10 minutes)**

**Create a New Directory for the Website**

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.023.png)	

Here we need to use sudo to make directory because in web root directory it requires root permission and then we give permission to current user .

**Create HTML File**

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.024.png)

**Create CSS File**

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.025.png)

**Create JavaScript File**

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.026.png)

**Add an Image**

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.027.png)

#### <a name="_zbq1soq37pps"></a>**Part 3: Configuring Apache2 to Serve the Website (10 minutes)**
**Create a Virtual Host File**

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.028.png)

**Enable the New Virtual Host**

Enable the virtual host configuration:

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.029.png)

Disable the default site configuration:

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.030.png)

Reload the Apache2 service to apply the changes:

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.031.png)	

**Test the Configuration**

![](media/Aspose.Words.afb5cb24-a123-439a-96f7-9af8307673a6.032.png)