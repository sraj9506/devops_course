### **Comprehensive Linux Operations**

#### **Project Overview**

This project spans various aspects of Linux system administration,
including file management, user and group management, service control,
process handling, and more. You will be completing tasks that simulate
real-world scenarios, providing hands-on experience with Linux commands
and configurations.

### **Project Breakdown**

#### **Part 1: Creating and Editing Text Files (20 minutes)**

**Scenario:** You are tasked with documenting the configurations and
settings for a new server. You\'ll use different text editors to create
and update these documents.

1.  **Using Nano**

Create a file server\_config.txt using Nano and Add the Content :

![](.//media/image1.png){width="6.268055555555556in"
height="0.3076388888888889in"}

![](.//media/image2.png){width="6.240277777777778in"
height="0.6479166666666667in"}

Save and exit (Ctrl+O, Enter, Ctrl+X).

2.  **Using Vi**

Edit the same file with Vi and Append the text:

![](.//media/image3.png){width="6.268055555555556in"
height="0.2743055555555556in"}

![](.//media/image4.png){width="6.268055555555556in"
height="0.9604166666666667in"}

Save and exit (Esc, :wq).

3.  **Using Vim**

Further edit the file with Vim and Append the text:

![](.//media/image5.png){width="6.268055555555556in"
height="0.2743055555555556in"}

![](.//media/image6.png){width="6.268055555555556in"
height="1.0243055555555556in"}

Save and exit (Esc, :wq).

#### 

#### **Part 2: User & Group Management (20 minutes)**

**Scenario:** You need to set up user accounts and groups for a new team
joining the project.

We need to use sudo in these commands because user and group management
requires root user permissions.

1.  **Adding/Removing Users**

**Add a new user developer:**

![](.//media/image7.png){width="6.268055555555556in"
height="2.4097222222222223in"}

**Remove the user developer:**

![](.//media/image8.png){width="6.134027777777778in"
height="0.5333333333333333in"}

2.  **Managing Groups**

**Create a group devteam:**

![](.//media/image9.png){width="6.268055555555556in"
height="0.21319444444444444in"}

**Add the user developer to the devteam group:**

![](.//media/image10.png){width="6.268055555555556in"
height="0.21319444444444444in"}

**Remove the user developer from the devteam group:**

![](.//media/image11.png){width="6.268055555555556in"
height="0.36527777777777776in"}

#### **Part 3: File Permissions Management (20 minutes)**

**Scenario:** Ensure that only the appropriate users have access to
specific files and directories.

1.  **Understanding File Permissions**

Here we view permissions for server\_config.txt:

![](.//media/image12.png){width="6.268055555555556in"
height="0.38819444444444445in"}

Here rw is for user which means owner has read and write access.

Here rw for second place belongs to group which has read and write
access.

Here r for third place belongs to others which has read access.

2.  **Changing Permissions and Ownership**

Change permissions to read/write for the owner and read-only for others:

![](.//media/image13.png){width="6.268055555555556in"
height="0.22847222222222222in"}

Here 644 means 6 refers to the read write access for the owner .

4 refers to the read only access for group.

4 refers to the read only access for others.

Change the owner to developer and the group to devteam:

![](.//media/image14.png){width="6.268055555555556in"
height="0.2111111111111111in"}

**Part 4: Controlling Services and Daemons (20 minutes)**

**Scenario:** Manage the web server service to ensure it is running
correctly and starts on boot.

We use systemctl command which is responsible for manage services.

1.  **Managing Services with systemctl**

    ![](.//media/image15.png){width="6.018055555555556in"
    height="0.4965277777777778in"}

![](.//media/image16.png){width="5.957638888888889in"
height="0.6333333333333333in"}

Before we start the service we need to install apache first which is
illustrate through above commands where we first update package list and
then install apache2.

![](.//media/image17.png){width="6.268055555555556in"
height="1.961111111111111in"}

Then First we Start the Apache service

Then Stop the Apache service.

Then Enable the Apache service to start on boot.

Then Disable the Apache service.

Then check the status of the Apache service.

2.  **Understanding Daemons**

    Discuss the role of the sshd daemon in providing SSH access to the
    server.

#### **Part 5: Process Handling (20 minutes)**

**Scenario:** Monitor and manage processes to ensure the server is
performing optimally.

1.  **Viewing Processes**

List all running processes.

![](.//media/image18.png){width="6.268055555555556in"
height="0.7416666666666667in"}

Use top to view processes in real-time.

![](.//media/image19.png){width="6.268055555555556in"
height="1.4715277777777778in"}

2.  **Managing Processes**

Identify a process to kill using ps or top, then kill it:

![](.//media/image20.png){width="6.268055555555556in"
height="0.2569444444444444in"}

Here we kill firefox.

![](.//media/image21.png){width="6.268055555555556in"
height="0.4895833333333333in"}

Here sleep 100 means system pauses for 100 seconds and this & send this
command for background processing and by using nice command we set the
low priority which means os provides less cpu time to it.

![](.//media/image22.png){width="6.268055555555556in"
height="0.46319444444444446in"}

Here we change priority using renice and +10 means we set priority of
process to 10.

The range of priority is -20 (highest) and +19 (lowest).

### **Creating and Deploying a Static Website with Apache2**

#### **Preparation (5 minutes)**

-   Ensure you have access to a Linux environment (e.g., virtual
    > machines, EC2 instances, or local installations) with sudo
    > privileges.

### **Activity Breakdown**

#### **Part 1: Installing Apache2 (5 minutes)**

This is already shown in Part 4.

#### **Part 2: Creating the Website (10 minutes)**

1.  **Create a New Directory for the Website**

![](.//media/image23.png){width="6.268055555555556in"
height="0.5069444444444444in"}

Here we need to use sudo to make directory because in web root directory
it requires root permission and then we give permission to current user
.

2.  **Create HTML File**

![](.//media/image24.png){width="6.018055555555556in"
height="1.2159722222222222in"}

3.  **Create CSS File**

    ![](.//media/image25.png){width="5.875694444444444in"
    height="1.4006944444444445in"}

4.  **Create JavaScript File**

> ![](.//media/image26.png){width="6.018055555555556in"
> height="0.6326388888888889in"}

5.  **Add an Image**

    ![](.//media/image27.png){width="6.102777777777778in"
    height="1.9777777777777779in"}

#### 

#### 

#### **Part 3: Configuring Apache2 to Serve the Website (10 minutes)**

1.  **Create a Virtual Host File**

    ![](.//media/image28.png){width="6.018055555555556in"
    height="1.2715277777777778in"}

2.  **Enable the New Virtual Host**

Enable the virtual host configuration:

![](.//media/image29.png){width="6.268055555555556in"
height="0.33819444444444446in"}

Disable the default site configuration:

![](.//media/image30.png){width="6.268055555555556in"
height="0.1951388888888889in"}

Reload the Apache2 service to apply the changes:

![](.//media/image31.png){width="6.268055555555556in"
height="0.1951388888888889in"}

3.  **Test the Configuration**

    ![](.//media/image32.png){width="6.268055555555556in"
    height="4.586111111111111in"}
