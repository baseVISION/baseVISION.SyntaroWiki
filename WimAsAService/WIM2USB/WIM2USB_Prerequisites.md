# WIM2USB Prerequisites
[1.]()  
[2.]()  
[3.]()  
[4.]()  
[5.]()  

To create a USB Stick with WIM2USB you need the following things.

### USB Stick

You need a USB Stick that presents it self as a Removable Device. Almost all USB-Sticks do that.  
But there are some that present them self as a Fixed Disk (a Builtin Harddisk) those will not work.  
We don't show the Fixed Disks because we want to prevent you from accidently formatting a Harddisk.  
The USB Stick needs at least to have 500MB more Storage Space then the size of the WIM and Drivers you want to add. We had good results with 32GB Sticks.  
We recommend that you use a USB Stick that supports USB 3.0 or higher  

### Admin Account  
When starting the WIM2USB.exe, it checks if you started it with Administrator Credentials. If you didn’t, the Tool with let you know and it will not work.

### WIM File  
You need a WIM File that you want to add to your USB
Stick.  
You can also use your WimAsAService Images. Those work very well.
### Microsoft ISO  
You need a Microsoft ISO from which the Tool will use the Windows PE Files and other files needed for booting.  
The language of the ISO you use will also be the Language that the Windows Installation Process will be presented, once you use the Stick.  
The WIM and the ISO Version should match.  
We tested WIM2USB with different Windows 10 Builds.  
Windows 7 or Server ISO's may work as well, but we have not tested those.  

### Drivers  
If you want to add drivers to your USB Stick you need those Drivers in “Driver Package” Form.  
That means you need the Inf Files etc. and not the Setup.EXE or MSI Files of the Driver.  
You can use the Get-WindowsDriver PowerShell Command to create suche a Package from a System containing all the drivers.  