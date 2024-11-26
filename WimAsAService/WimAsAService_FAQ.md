# WimAsAService FAQ
[1. Where can I login and generate my WIM-Files](../WimAsAService/WimAsAService_FAQ.md#where-can-i-login-and-generate-my-wim-files)  
[2. What do the numbers under “Select base WIM” mean?](../WimAsAService/WimAsAService_FAQ.md#what-do-the-numbers-under-select-base-wim-mean)  
[3. Adding an Application](../WimAsAService/WimAsAService_FAQ.md#adding-an-application)  
[4. Not all Updates are Installed](../WimAsAService/WimAsAService_FAQ.md#not-all-updates-are-installed)  
[5. Missing Language Packs](../WimAsAService/WimAsAService_FAQ.md#missing-language-packs)  


### Where can I login and generate my WIM-Files

You can find the Login Page here <https://factory.wimasaservice.ch>

### What do the numbers under “Select base WIM” mean?

Those numbers stand for the Windows Version and Editions you can select
as a base for your Custom WIM:

10.0.26100 = Windows 11 24H2 / Windows 11 LTSC 2024 or Windows Server 2025
10.0.22631 = Windows 11 23H2  
10.0.22621 = Windows 11 22H2  
10.0.20348 = Windows Server 2022  
10.0.22000 = Windows 11  
10.0.19045 = Windows 10 22H2  
10.0.19044 = Windows 10 21H2 / Windows 10 LTSC 2021  
10.0.19043 = Windows 10 21H1  
10.0.19042 = Windows 10 20H2  
10.0.19041 = Windows 10 2004 / Windows Server 2004 (Only Core
Versions)  
10.0.18363 = Windows 10 1909 / Windows Server 1909 (Only Core
Versions)  
10.0.18362 = Windows 10 1903 / Windows Server 1903 (Only Core
Versions)  
10.0.17763 = Windows 10 1809 / Windows 10 LTSC 2019 or Server 2019  
10.0.17134 = Windows 10 1803  
10.0.16299 = Windows 10 1709 / Windows Server 1709 (Only Core
Versions)  
10.0.15063 = Windows 10 1703  
10.0.14393 = Windows 10 1607 or Windows 10 1607 LTSB/LTSC or Server
2016  
10.0.10586 = Windows 10 1511  
6.3.9600 = Windows 8.1 with Update 3 or Server 2012 R2  
6.1.7601 = Windows 7 with SP1 or Server 2008 R2  

### Adding an Application

This Information was moved to the [Tutorials
Section](../WimAsAService/WimAsAService_Tutorials.md#adding-an-application)

### Not all Updates are Installed

In some special cases, Microsoft releases a second cumulative update
between the normal cycle of Patch Tuesdays. Because these updates are
marked differently in the Microsoft Update Catalog our solution to
install all updates cannot detect these updates. This might result in
your WIM-image not having all the newest updates. We already were in
contact with Microsoft and there is currently no workaround to this
problem.

### Missing Language Packs

If you have added language packs with WimAsAService but when a user logs
in he can not select them you need to execute the following code as the
user:

``` PowerShell
$OSInfo = Get-WmiObject -Class Win32_OperatingSystem
$languagePacks = $OSInfo.MUILanguages
$LanguageList = Get-WinUserLanguageList
ForEach($languagePack in $languagePacks){
    $LanguageList.Add($languagePack)
}
Set-WinUserLanguageList $LanguageList -force
```


This is a known issue with Windows 10 documented here:  
<https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/language-packs-known-issue#adding-language-packs-in-windows-10-version-1803-and-later-versions-known-issue>
