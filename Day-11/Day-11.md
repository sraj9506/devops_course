Project 1 :

Demonstrate Build Other Projects when one project build succesfully in
jenkins using maven build tool and also define pipeline view.

Details :

-   First we need to configure for maven , so from the jenkins dashboard
    first we click on manage jenkins option.

![](.//media/image1.png)

-   Then Click on Tools.

![](.//media/image2.png)

-   Then after scroll down and go to Maven installations and select
    maven version and give name.

![](.//media/image3.png)

-   After that we need to install plugin for pipeline view called
    "Builed Pipeline" . For that we need to go inside plugins menu which
    is shown in second step.

-   Inside that go to availabe plugin search for plugin and installed
    it.

![](.//media/image4.png)

-   Now go to dashboard create new free style project let's name it Dev
    Test.

-   Now here we provide git repository and we here don't want to
    automate the build so we leave all the option as it is.

-   Now inside Build Steps we choose Invoke top-level Maven Targets
    option and select maven version and then inside goals we define it
    as a test.

![](.//media/image5.png)

-   After that we create one more project called Dev Compile and follow
    same process as above but we here give name goal as compile and also
    we want that when this build finish then automatically Dev Test
    project.

![](.//media/image6.png)

-   Here we specify project name which we want to build on and by
    clicking first option we ensure that if this build is succeed then
    and then only another build provokes.Now we build the Dev Compile
    project and we can see that test project is automatically built but
    we see it in the pipeline view for that we follow below steps.

-   Now for seeing this process in pipeline view we go to the dashboard
    and then click on + icon above the project list.(refer first
    screenshot)

-   Here scroll down and inside Upstream/downstream config we choose
    project which triggers another project build.

-   Restrict triggers to most recent successful builds . If its set to
    no then display button on all successfull build else it displayed on
    most recent successful build.

-   Always allow manual trigger on pipeline steps. Select this option if
    you want to be able to execute again a successful pipeline step. If
    the build is parameterized, this will re-execute the step using the
    same parameter values that were used when it was previously
    executed.

![](.//media/image7.png)

-   Inside Display Options we define No of Displayed builds which means
    how many success or failed builds displayed as pipeline view.

-   Row headers and Column headers are for displaying specific
    information in view.

-   Refresh frequency is frequency at which the Build Pipeline Plugin
    updates the build cards in seconds.

-   Url from custom css files is for define custom layout of view.

-   Console output Link Style means Generated log is displayed in which
    manner.

![](.//media/image8.png)

-   Now we click on ok and we can see pipeline like view.

![](.//media/image9.png)

Project 2 :

Demonstrate Accessing github private repository through credentails in
jenkins.

Details :

-   We follow the same process of above of creating free style project
    but we don't configure maven because here we use git repository
    which has shell script.

-   First inside Credentials Field we click on add button and choose
    jenkins and here use github token as username and password and we
    make here this credential as global so it is availabe to everyone.

![](.//media/image10.png)
-   And then select added token.

![](.//media/image11.png)

-   Here we want to execute shell script so that in build step we need
    to give permission of execute and command of execute and along with
    that i pass parameter to it.

![](.//media/image12.png)

-   Below is the console output of script .

![](.//media/image13.png)
