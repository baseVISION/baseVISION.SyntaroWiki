# WIM2USB Tutorials


### Prerequisites

First you need to have all the things listed under
[Prerequisites](/WIM2USB_Prerequisites "wikilink")
If you have everything listed there you can continue.
===Create a USB Stick=== [800px \|
WIM2USB_Create_Stick](/File:WIM2USB_Create_Stick.png "wikilink")

i1: This is the Message Section the Tool Shows you Information- and
Error-Messages in this section.
i2: When you klick on this Button you get to this Wiki.
i3: Closes the Tool.

1: When you press this Button you can select the USB Stick you want to
use for WIM2USB.
But be aware that all Data on this Stick will be deleted, since we need
to Format this USB Stick!

2: Now you need to select if you want to make a USB Stick for a BIOS
(Legacy) System or for a UEFI System.
It is very important that you select the correct Mode, because if you
select the wrong one then you will can not boot from your Stick
afterwards.

3: Now you need to select the ISO File from Microsoft that contains the
Windows Version you want to use for your Installation process.
The Windows Version and the Language of the ISO are important because we
use the Windows PE components from there and the Person that uses the
Stick afterwards will see
informations first in this language.

4: Now you can select the WIM File that you want to Install with your
USB Stick.

5: When you have selected all the other things and you are ready to
start creating the Stick you can press this Button.

You will then see the following Warning. So that you understand the Time
it can take (Depending of the WIM Filesize)
and the risk that all your Data will be removed from the USB Stick.
[800px \| WIM2USB_Warning](/File:WIM2USB_Warning.png "wikilink")

When you click on OK the process will start.
If you click on Cancel you get to back to the Main Window and can exit
from there or select a new USB Stick.

When you use one of our WimAsAService WIM Files created after the 17th
January 2018 you will not see an advertisement.
If you use one of your own then you will have to wait for a few seconds
and enjoy our advertisement.

[800px \|
WIM2UBS_Advertisement](/File:WIM2USB_Advertisement.png "wikilink")

You will now have to wait for a few minutes for your entertainment you
will see a progressbar
[800px \| WIM2USB_Progress](/File:WIM2USB_Progress.png "wikilink")

Once the process is finished the progressbar will disappear and you will
see the next following message
[800px \|
WIM2USB_Stick_creation_done](/File:WIM2USB_Stick_creation_done.png "wikilink")

Your USB Stick is now ready so that you could install a Computer with
the WIM you selected.
===Replace WIM=== When you just need to replace the WIM on your existing
USB Stick with a new one you can also easily do this with WIM2USB.
[800px \|
Wim2USB_Replaca_WIM](/File:WIM2USB_Replace_WIM.png "wikilink")

**1:** First you need to select the USB Stick you use for WIM2USB.
**2:** Click on the "Replace WIM" Tab.
**3:** You now need to select the new WIM File, you want to put on your
Stick.
**4:** Once you are ready klick on this Button to start the WIM
replacement.
You will see the Advertisement again if your not using a newer
WimAsAService File.
As soon as the replacement Process starts you will also see the
progressbar again.
When the replacement process has finished, the progressbar will
disappear and you will see a Message in the Message area.
===Configure=== When you as an experienced Admin want to see what the
content of the autounattend.xml is or you want to change it, you can do
it either with the tool or directly through opening the autounattend.xml
in the root of you USB Stick.

[800px \| WIM2USB_Configure](/File:WIM2USB_Configure.png "wikilink")

**1:** First you need to select the USB Stick
**2:** Then you need to click on the "Configure" Tab.
**3:** When you click on the Open Button the XML will open with you
default Tool for opening XML-Flies. Usually this is Internetexplorer.
**4:** When you click on the Edit Button the XLM will open with the
Windows Notepad.
===Add Drivers=== You can also ad Drivers to your USB Stick that then
will get used for installing your Computer.
If you want to add drivers to your USB Stick you need those Drivers in
“Driver Package” Form.
That means you need the Inf Files etc. and not the Setup.EXE or MSI
Files of the Driver.
You can use the Get-WindowsDriver PowerShell Command to create suche a
Package from a System containing all the drivers.

When you add Drivers, the folder you select and all of its subfolders
will get copied to the USB-Stick.
If you want to have Drivers for multiple Computer Models on your Stick
that is possible. Just make sure your Foldernames are different.
But be aware that the more drivers you add, the longer the Installation
will take.
Because for every Hardware Device all the Drivers on the Stick will be
checked if that one fits and is the best available driver.
And that takes some time.

[800px \|
WIM2USB_Add_Drivers](/File:WIM2USB_Add_Drivers.png "wikilink")

**1:** First select you USB Stick.
**2:** Then click on the "add Drivers" Tab.
**3:** Now selected the Root Folder that contains all the Driver you
want to add.
**4:** Once you are ready klick on this Button to start the Driver
adding.
As soon as the Process starts you will also see the progressbar again.
When the process has finished, the progressbar will disappear and you
will see a Message in the Message area.

===YourInstallation.exe=== Once you have created your USB Stick with
WIM2USB, you will find the YourInstallation.exe in the Root of your USB
Stick.
With this little tool you or your End Users can change some of the
Settings inside the autounattend.xml
To run this tool you don't need Admin rights.
===Easy Tab=== [800px \|
WIM2USB_Yourinstallation_Easy](/File:WIM2USB_Yourinstallation_Easy.png "wikilink")

**1:** In this area you see information that tells you which
autounattend.xml you are editing.
**2:** Here you can select what language you want to have. But that is
the Input Language and setz you Time and Currency Formats but not the
language Windows is displayed in. This
you set under Point 5.
**3:** This Filed is for entering your Name or the Companies Name.
**4:** Here you can enter your the Computername. This Field can not be
Empty! If you want Windows to generate a Computername then you need to
enter a \*
**5:** With this selection you can choose in which language Windows is
displayed. The Selection here depends on the language Packs that are
inside your WIM File.
**6:** This Button undos your changes and reloades the File.
**7:** This Button lets you save your changes.
**8:** To edit Settings that usually only a Administrator changes you
can select the Advanced Tab.
**9:** The Exit Button closes the Tool. Be aware that unsaved Changes
will be lost.
===Advanced Tab=== Usually only a Admin configures this information.

[800px \|
WIM2USB_Yourinstallation_Advanced](/File:WIM2USB_Yourinstallation_Advanced.png "wikilink")

**1:** Here you can enter the Name of your Company.
**2:** If you need to define a Licenskey for your Installation, you can
do that here.

### FAQ

When the User changes the Langauge in the Language selection at the
First screen during PE Boot you can get a error message.
[800px \|
FAQ_Failed_to_set_select_Display_Language](/File:FAQ_Failed_to_set_select_Display_Language.jpg "wikilink")
The users don't need to select a language here. They will not have to do
any Inputs before the OOB Phase (Out of the Box) there they will be able
to select there Keyboard Layout.