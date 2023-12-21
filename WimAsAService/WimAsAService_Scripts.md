---
title: WimAsAService Scripts
permalink: /WimAsAService_Scripts/
---

## WimAsAService Scripts

### Get a List of installed Modern Apps (aka. Metro or Universal Apps)

The following Script generates a CSV of the Installed Modern Apps.
[<File:Get> AppxToCSV.ps1](/File:Get_AppxToCSV.ps1 "wikilink")
To uninstall Modern Apps during the WIM generation, you need to enter
the Names from the first column as comma separated Values.
This is supported under Windows 8.1 and Windows 10
The CSV is saved in the folder form where the Scripts was executed
===Get a List of available Windows Features=== The following Script
generates a CSV with the available Windows Features and there install
State. **Important:** The Scripts needs to be executed with Admin
Rights. [<File:Get>
FeaturesToCSV.ps1](/File:Get_FeaturesToCSV.ps1 "wikilink")
To install or uninstall Features, enter the Names from the first column
as comma separated Values to the corresponding Section.
This is supported under Windows 7, Windows 8.1 and Windows 10
The CSV is saved in the folder form where the Scripts was executed
===Get the MD5 Hash of a File.ps1=== The following Script calculates the
MD5 Hash of a File.
[<File:GetMD5HashofFile.ps1>](/File:GetMD5HashofFile.ps1 "wikilink")
You can use it to compare the Hash of your downloaded WIM with the Value
in the WIM Documentation