# WimAsAService Scripts
[1. WimAsAService Scripts](https://github.com/baseVISION/baseVISION.SyntaroWiki/blob/main/WimAsAService/WimAsAService_Scripts.md#wimasaservice-scripts-1)  
[- 1.1. Get a List of installed Modern Apps (aka. Metro or Universal Apps)](https://github.com/baseVISION/baseVISION.SyntaroWiki/blob/main/WimAsAService/WimAsAService_Scripts.md#get-a-list-of-installed-modern-apps-aka-metro-or-universal-apps)  
[- 1.2. Get a List of available Windows Features](https://github.com/baseVISION/baseVISION.SyntaroWiki/blob/main/WimAsAService/WimAsAService_Scripts.md#get-a-list-of-available-windows-features)  
[- 1.3. Get the MD5 Hash of a File.ps1](https://github.com/baseVISION/baseVISION.SyntaroWiki/blob/main/WimAsAService/WimAsAService_Scripts.md#get-the-md5-hash-of-a-fileps1)  

## WimAsAService Scripts

### Get a List of installed Modern Apps (aka. Metro or Universal Apps)

The following Script generates a CSV of the Installed Modern Apps.  
[AppxToCSV.ps1](https://github.com/baseVISION/baseVISION.SyntaroWiki/blob/main/Data/Get_AppxToCSV.ps1)  
To uninstall Modern Apps during the WIM generation, you need to enter the Names from the first column as comma separated Values.  
This is supported under Windows 8.1 and Windows 10  
The CSV is saved in the folder form where the Scripts was executed  
### Get a List of available Windows Features 
The following Script generates a CSV with the available Windows Features and there install State. **Important:** The Scripts needs to be executed with Admin Rights.  
[FeaturesToCSV.ps1](https://github.com/baseVISION/baseVISION.SyntaroWiki/blob/main/Data/Get_FeaturesToCSV.ps1)  
To install or uninstall Features, enter the Names from the first column as comma separated Values to the corresponding Section.  
This is supported under Windows 7, Windows 8.1 and Windows 10  
The CSV is saved in the folder form where the Scripts was executed  
### Get the MD5 Hash of a File.ps1
The following Script calculates the MD5 Hash of a File.  
[GetMD5HashofFile.ps1](https://github.com/baseVISION/baseVISION.SyntaroWiki/blob/main/Data/GetMD5HashofFile.ps1)  
You can use it to compare the Hash of your downloaded WIM with the Value in the WIM Documentation