# WimAsAService ReleaseNotes
[1.1 4.1.12.0 / 17.01.2023](https://github.com/baseVISION/baseVISION.SyntaroWiki/blob/main/WimAsAService/WimAsAService_ReleaseNotes.md#41120--17012023)  
[1.2 4.1.11.0 / 15.01.2023](https://github.com/baseVISION/baseVISION.SyntaroWiki/blob/main/WimAsAService/WimAsAService_ReleaseNotes.md#41110--15012023)  
[1.3 4.1.10.0 / 20.10.2022](https://github.com/baseVISION/baseVISION.SyntaroWiki/blob/main/WimAsAService/WimAsAService_ReleaseNotes.md#41100--20102022)  
[1.4 4.1.9.0 / 21.09.2022](https://github.com/baseVISION/baseVISION.SyntaroWiki/blob/main/WimAsAService/WimAsAService_ReleaseNotes.md#4190--21092022)  
[1.5 4.1.8.0 / 18.03.2022](https://github.com/baseVISION/baseVISION.SyntaroWiki/blob/main/WimAsAService/WimAsAService_ReleaseNotes.md#4180--18032022)  
[1.6 4.1.7.0 / 18.03.2022](https://github.com/baseVISION/baseVISION.SyntaroWiki/blob/main/WimAsAService/WimAsAService_ReleaseNotes.md#4170--18032022)  
[1.7 4.1.6.0 / 18.03.2022]()  
[1.8 4.1.5.0 / 03.02.2022]()  
[1.9 4.1.4.0 / 31.01.2022]()  
[1.10 4.1.3.0 / 25.01.2022]()  
[1.11 4.1.2.0 / 22.01.2022]()  
[1.12 4.1.1.0 / 25.11.2021]()  
[1.13 4.1.0.0 / 05.11.2021]()  
[1.14 4.0.0.9 / 14.10.2021]()  
[1.15 4.0.0.8 / 05.10.2021]()  
[1.16 4.0.0.7 / 28.09.2021]()  
[1.17 4.0.0.6 / 02.06.2021]()  
[1.18 4.0.0.5 / 06.04.2021]()  
[1.19 4.0.0.4 / 01.04.2021]()  
[1.20 4.0.0.3 / 25.03.2021]()  
[1.21 4.0.0.2 / 15.12.2020]()  
[1.22 4.0.0.1 / 12.11.2020]()  
[1.23 4.0.0.0 / 01.10.2020]()  
[1.24 3.0.0.8 / 04.09.2020]()  
[1.25 3.0.0.7 / 04.06.2020]()  
[1.26 3.0.0.6 / 24.04.2020]()  
[1.27 3.0.0.5 / 15.01.2020]()  
[1.28 3.0.0.4 / 29.11.2019]()  
[1.29 3.0.0.3 / 13.11.2019]()  
[1.30 3.0.0.2 / 31.07.2019]()  
[1.31 3.0.0.1 / 25.01.2019]()  
[1.32 3.0.0.0 / 16.08.2018]()  
[1.33 2.0.4.2 / 02.05.2018]()  
[1.34 2.0.4.1 / 14.02.2018]()  
[1.35 2.0.4.0 / 17.01.2018]()  
[1.36 2.0.3.9 / 15.11.2017]()  
[1.37 2.0.3.8 / 05.11.2017]()  
[1.38 2.0.3.7 / 29.06.2017]()  
[1.39 2.0.3.6 / 03.05.2017]()  
[1.40 2.0.3.5 / 09.04.2017]()  
[1.41 2.0.3.4 / 27.03.2017]()  
[1.42 2.0.3.3 / 01.03.2017]()  
[1.43 2.0.3.2 / 27.12.2016]()  
[1.44 2.0.3.1 / 14.12.2016]()  
[1.45 2.0 / 11.11.2016]()  
[1.46 1.0 / 04.04.2016]()  

## WimAsAService ReleaseNotes

### 4.1.12.0 / 17.01.2023

-   Implemented a Solution to prevent unwanted Feature Updates trough Windows Updates

### 4.1.11.0 / 15.01.2023

-   Changed that -alluser Switch is only used for W11 uninstalls, since it caused issues on some removal under W10

### 4.1.10.0 / 20.10.2022

-   Replaced deprecated Mail-Messaging function for new function supporting modern authentication
-   Added new field to Webhook Message called "messageShort" to indicate the process type (e.g., WIM Creation, ISO Upload, etc.)
-   Fixed a bug with the Uninstall Metro app script under Windows 11

### 4.1.9.0 / 21.09.2022

-   Added API Key to the Ruckzuck app import script.
-   Added new Version of rzget for upcoming CurrentVersion packages.
-   Added the script GLOBAL_InstallLatestdotNetForRzget_001 that needs to be used when installing CurrentVersion Packages on a system that has not natively .Net 4.8 installed. The Script needs to be added to the PowerShell "Before Apps" step.

### 4.1.8.0 / 18.03.2022

-   Fixed a bug when it comes to revision counting with ServerCore versions.

### 4.1.7.0 / 18.03.2022

-   Image documentation is now uploaded to the Azure Blob Storage on a upload of any filetype.

### 4.1.6.0 / 18.03.2022

-   Fixed a bug with autounattend selection.
-   Resize VHD to 1mb size alignment to ensure the image can be used as Azure Image.

### 4.1.5.0 / 03.02.2022

-   Fixed a Problem with workaround for disabling Reserved Storage.

### 4.1.4.0 / 31.01.2022

-   Fixed a display bug in the table layout of the Manage pages.

### 4.1.3.0 / 25.01.2022

-   Implemente a Workaround for a Problem with Sysprep and disabling Reserved Storage.

### 4.1.2.0 / 22.01.2022

-   Fixed a Bug within IE that the content of certain controls was not displayed.
-   Added a Image Type filter function for Global Admins
-   Added a Get Status Button for Global Admins to reduce to need to logon to the server.
-   Modified some scripts to allow the implementation and management of the custom autounattend.xml files

### 4.1.1.0 / 25.11.2021

-   We added the possibility to upload an manage custom autounattend.xml files to the UI.
-   Modified some scripts to allow the implementation and management of the custom autounattend.xml files

### 4.1.0.0 / 05.11.2021

-   Possibility to add comments to Image Types is available.
-   Function to copy Image Types is implemented.
-   Informing about the status of the image generation is now even more informative with a current screenshot of the VM.
-   The description to remove Metro App is easier to understand.
-   In the Base WIM list, the filter function has been introduced to make the search more efficient.
-   The WebHook function allows you to receive notifications about the generation status and trigger your custom automations.
-   Multifactor authentication enables more secure sign-in option to your tenant.
-   Excluded KB's get now written to the documentation txt.

### 4.0.0.9 / 14.10.2021

-   We now support custom autounattend.xml files that get put inside your ISO Files. If you want to use that, contact us. Feature idea by J. Kern

### 4.0.0.8 / 05.10.2021

-   When a ISO gets generated and the WIM File is more then 4GB the WIM get's now split to support Secure Boot on FAT32 Sticks

### 4.0.0.7 / 28.09.2021

-   Added way to import new Language Pack ISO Type first released with Server 2022
-   Added way to import new FoD ISO Type first released with Server 2022
-   Implemented a workaround to use KMS keys for some OS Versions that need a key and want accept the SKIP command.
-   Improved loging around ISO and VHD generation and uploads.

### 4.0.0.6 / 02.06.2021

-   Fixed a Bug with the file size when creating vhd's.
-   Improved the logs a bit when creating vhd's.

### 4.0.0.5 / 06.04.2021

-   Implemented a workaround for problems with Windows Defender Update installations trough Windows Update.

### 4.0.0.4 / 01.04.2021

-   Fixed a typo in the Description for CurrentVersion apps
-   Fixed a Problem when a Ruckzuck Json has more then one line of code for PSDetection, PSPreInstall,PSInstall or PSPostInstall and fixed a problem that could prevent log writing

### 4.0.0.3 / 25.03.2021

-   Added the option to use the current Version of an RuckZuck Package at generation Time of the WIM

### 4.0.0.2 / 15.12.2020

-   Added support to install Language Interface Packs (LIPs)

### 4.0.0.1 / 12.11.2020

-   Fix issue with copy the documentation file
-   Added support to delete multiple Image types (wim, vhd, iso)

### 4.0.0.0 / 01.10.2020

-   VHD generation based off your custom WIM file
-   ISO generation based off your custom WIM file
-   Possibility to automatically copy your files to Azure after
    generation
-   Manage files (WIM,VHD,ISO) page to download your files directly from our Server
-   Upload function in Manage files page to manually upload previously generated files to your Azure Blob Storage
-   Notify Tenant-Email option to get every notification on the
    specified Tenant E-Mail address as well
-   Selection lists do not stick anymore once you moved items to the other box
-   Improved handling on Metro Apps: From now on you only see apps that can be removed from the baseWIM

### 3.0.0.8 / 04.09.2020

-   Fixed issues with update installation for Windows 7

### 3.0.0.7 / 04.06.2020

-   With Windows 10 10.0.19041 (2004) there was a Problem that after Syprep WinPE was not applied correctly because the MDT thought that the system was in UEFI Mode, even if it was not. Microsoft fixed the Microsoft.BDD.Utility.dll and this fixed version now sets the IsUEFI MDT Variable correctly
-   Fixed Issues with new data in the RuckZuck JSON File, when
    installing RuckZuck Apps.

### 3.0.0.6 / 24.04.2020

-   New Registry Key added to disable Driver Search Script
    GLOBAL_DisableDriverSearchingInTheInternet
-   The Script to Import Ruckzuck Apps now uses TLS 1.2

### 3.0.0.5 / 15.01.2020

-   With WimAsAService it is now possible to schedule your image generation one day after Microsoft’s Patch Tuesday.

### 3.0.0.4 / 29.11.2019

-   Corrected miscellaneous typos throughout the service (status pop up, WIM documentation, etc.).
-   Made some changes to the creation of the WIM documentation that the layout is more coherent.

### 3.0.0.3 / 13.11.2019

-   Added support for OS ISO's with an identical build number. For example W10 1903/1909.

### 3.0.0.2 / 31.07.2019

-   Updated our RuckZuck Import Script to use the new RestAPI

### 3.0.0.1 / 25.01.2019

-   Fixed a small Bug where the script returned failed when the image was still running but one Application installation failed.
-   Fixed a Bug that a tenant with the trial flag could not Save an Image Type.

### 3.0.0.0 / 16.08.2018

-   You can now see the status of your running generations.
-   If you need to abort a running generation you can now cancel it.
-   You can now download the logs that get generated during the image generation.
-   We now disable automatic Windows Store App updates during the generation process and enable them again afterward.
-   Tenants now can get marked as Trial. Trial Tenants can only add four applications to there images.
-   We added a link to our Legal Overview at the bottom of the page
-   We added a favicon for the Website with the WimAsAService logo
-   Syntaro Customers can now buy licenses and open trials for
    WimAsAService directly out of Syntaro

### 2.0.4.2 / 02.05.2018

-   We fixed a Problem when adding Apps from Ruckzuck.
-   We made changes to the Scripts to Import baseWIM Files and to import Features on Demand so that those scripts also Work with the Source of Windows 10 1803

### 2.0.4.1 / 14.02.2018

-   We added the possibility for us to globally exclude KB's (For Example the Feature Updates for Windows 10).

### 2.0.4.0 / 17.01.2018

-   We now see the Description of the WIM to "Created with
    WimAsAService" we will use that for Wim2USB.

### 2.0.3.9 / 15.11.2017

-   Fixed an issue where some of the E-Mails where not send.

### 2.0.3.8 / 05.11.2017

-   The End Mail now also includes the documentation Text File as an Attachment.
-   We updated some things in the backend so that we can again add the latest RuckZuck Apps.

### 2.0.3.7 / 29.06.2017

-   The Documentation now also contains the Image size
-   We are now adding "Core" to the Filenames of the WIM and the Documentation. Feature Request by S. Beckmann

### 2.0.3.6 / 03.05.2017

-   We added an additional restart to prevent problems when
    GLOBAL_OSIEnableOSDFailedMessage_001 is used.
-   When an Application Zip Files contains a Subfolder and not directly the source we can now handle that. This will eliminate the number
    one problem that occurred when adding applications.
-   Made that the Build Number is written to the Documentation including the Update Version and added the ReleaseID (Works only for W10 and Server 2016). Feature Request by O. McIntosh

### 2.0.3.5 / 09.04.2017

-   Improved Queue Handling and when there are no free slots available the user gets an E-Mail that the WIM has been added to the Queue. Feature Request by O. McIntosh
-   Changed the Feature Documentation so that it contains the Feature Name in addition to the Caption and the Install State. With that, you have the correct names you need to enter in the fields of an Image Type. Feature Request by J. Wall
-   Added List of the Applications form WimAsAService with their Command line and Returncode to the Documentation. Feature Request by J. Wall
-   In the Documentation Changed Runned Scripts and Metro Apps Output to a Tabell.
-   Added List of all installed Modern Apps to the Documentation.

### 2.0.3.4 / 27.03.2017

-   We fixed some Typos in the E-Mails we are sending. And Correct Dokumentation (German) to Documentation in the Header of the Documentation TXT Files.

### 2.0.3.3 / 01.03.2017

-   We fixed some issues that happened when there was a space in the Lists of the Features or the Metro Apps.

### 2.0.3.2 / 27.12.2016

-   We fixed an issue in the Documentation Script under Windows 7, where the Future Names and the Installed Applications were not documented correctly.

### 2.0.3.1 / 14.12.2016

-   We fixed an issue that happened when there was a space in the Name of a PPKG.

### 2.0 / 11.11.2016

We added a lot of new Features:

- Renaming Images Types
-   A Rolle Concept (We now Support having Tenant Admins and Tenant Users)
-   The Users can now change their Password.
-   And Admin can add new Users and new Admins and also remove them again.
-   You can now Upload your own PowerShell Scripts and let them execute in three different phases during the generation process.
-   We can also provide Global PowerShell Scripts for you and you can easily use them in your Image Types.
-   You can now Manage your uploaded Content. You can remove it, see if and where it is in use. Download Scripts and PPKG-Files again.
-   You can now add Comments when Uploading PPKG-Files, Apps and PowerShell Scripts.
-   When you hoover with your Mouse over a Script, App or PPKG you will get a Tooltip that shows you the Comment and for aplications also the installation command line.
-   We added a Scheduler to let you generate your Images automatically once a month.
-   On the Download Page you can now see the MD5 Value of your Image Type and compare it to your downloaded File with our script.
-   We also added Tenant Management capabilities for Global Admins. This is a Feature we Implemented for potential Resellers that want to host the solution in their own Datacenter.

### 1.0 / 04.04.2016

Initial Release