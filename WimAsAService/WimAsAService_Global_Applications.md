# WimAsAService Global Applications

[1. Provided by baseVISION](../WimAsAService/WimAsAService_Global_Applications.md#provided-by-basevision)  
[- 1.1. GLOBAL_baseVISION_ActiveUserSetup_1.0.1_001_P_EN_x99](../WimAsAService/WimAsAService_Global_Applications.md#global_basevision_activeusersetup_101_001_p_en_x99)  
[- 1.2. GLOBAL_baseVISION_PauseToDebug_1_001_P_ML_x99](../WimAsAService/WimAsAService_Global_Applications.md#global_basevision_pausetodebug_1_001_p_ml_x99)  
[- 1.3. GLOBAL_baseVISION_RemoveW11ConsumerTeams_1.0_001_P_ML_x64](../WimAsAService/WimAsAService_Global_Applications.md#global_basevision_removew11consumerteams_10_001_p_ml_x64)  
[- 1.4. GLOBAL_Microsoft_CMTrace_5.0.7782.1000_001_P_EN_x99](../WimAsAService/WimAsAService_Global_Applications.md#global_microsoft_cmtrace_5077821000_001_p_en_x99)  
[- 1.5. GLOBAL_Microsoft_DisableWindowsConsumerFeatures_1.0_001_P_ML_x99](../WimAsAService/WimAsAService_Global_Applications.md#global_microsoft_disablewindowsconsumerfeatures_10_001_p_ml_x99)  
[- 1.6. GLOBAL_Customer_DisableSecureTime-KB3160312_1.0_001_P_ML_x99](../WimAsAService/WimAsAService_Global_Applications.md#global_customer_disablesecuretime-kb3160312_10_001_p_ml_x99)  
[- 1.7. GLOBAL_Microsoft_Office365ProPlus_CurrentChanel_001_P_EN&DE_x86](../WimAsAService/WimAsAService_Global_Applications.md#global_microsoft_office365proplus_currentchanel_001_p_ende_x86)  
[- 1.8. GLOBAL_baseVISION_Restart_1.0_001_P_ML_x99](../WimAsAService/WimAsAService_Global_Applications.md#global_basevision_restart_10_001_p_ml_x99)  
[2. Provided by ruckzuck](../WimAsAService/WimAsAService_Global_Applications.md#provided-by-ruckzuck)  
 

### Provided by baseVISION


#### GLOBAL_baseVISION_ActiveUserSetup_1.0.1_001_P_EN_x99
This Package installs ActiveUserSetup that is an alternative to the Active
Setup Method from Microsoft that doesn’t work with Inplace Upgrades.
You can find more information at
< ../WimAsAService/Active%20User%20Setup/Active_User_Setup.md>

#### GLOBAL_baseVISION_PauseToDebug_1_001_P_ML_x99

Do not use this Application! It stops the generation Process of your
WIM.  
This Package is only intended for Debugging through the baseVISION
Support Staff

#### GLOBAL_baseVISION_RemoveW11ConsumerTeams_1.0_001_P_ML_x64

This Script removes the Consumer Teams App and sets a key that prevents
it from being automatically reinstalled.  
(ConfigureChatAutoInstall to 0 at
HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Communications)  
It also sets an other key that prevents the Chat icon form being shown
in the Taskbar  
(ChatIcon to 3 at HKLM:\Software\Policies\Microsoft\Windows\Windows
Chat)

#### GLOBAL_Microsoft_CMTrace_5.0.7782.1000_001_P_EN_x99  
Places the Cmtrace Tool (Handy for reading Config Manager Logs) from Microsoft in
your C:\Windows Folder

#### GLOBAL_Microsoft_DisableWindowsConsumerFeatures_1.0_001_P_ML_x99

Disables Windows 10 Consumer Features with setting the following
registry Key:  
\[HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\CloudContent\]
"DisableWindowsConsumerFeatures"=dword:00000001  
You can find more Details about this Setting here:  
[Seeing extra apps? Turn them
off](https://blogs.technet.microsoft.com/mniehaus/2015/11/23/seeing-extra-apps-turn-them-off/)

#### GLOBAL_Customer_DisableSecureTime-KB3160312_1.0_001_P_ML_x99

Fixes a Problem in Windows 10 1511 where the Computer could revert to a
previous date and time  
\[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\w32time\Config\]  
"UtilizeSslTimeData"=dword:00000000  
You can find more Details about this Setting here:  
[A computer that is running Windows 10 Version 1511 reverts to a
previous date and
time](https://support.microsoft.com/en-us/help/3160312/a-computer-that-is-running-windows-10-version-1511-reverts-to-a-previous-date-and-time)

#### GLOBAL_Microsoft_Office365ProPlus_CurrentChanel_001_P_EN&DE_x86

This Application adds the newest Monthly Channel version for Office 365
ProPlus for the languages German and English.  
It adds all Office Applications contained in the ProPlus Version.  
For the product activation, a Office 365 ProPlus license has to be
assigned to the User.  

#### GLOBAL_baseVISION_Restart_1.0_001_P_ML_x99  
This Package initiates a restart.  
You can use it if you need a Restart after a certain other Package
Installation that doesn’t correctly provide a 3010 Exit Code.

### Provided by ruckzuck

The following Applications are imported form the Service
<https://ruckzuck.tools/>  
baseVISION has not created or tested those Packages.  
If you want more information about those Applications you can find theme
in the [RuckZuck Repository](https://ruckzuck.tools/Repository.aspx)  
If there is a newer Version provided on RuckZuck or you need another
Application that is available through RuckZuck,
please feel free to contact us and we will try to import it for you.

**Attention**:
CurrentVersion Packages use the commandline tool rzget.exe. Since august
2022 this needs .net 4.8 to run.  
If you see an error during the installation of a CurrentVersion package
.Net 4.8 might be missing.  
In that case use the Script GLOBAL_InstallLatestdotNetForRzget_001 in
your PowerShell "Before Apps" section.

Last update: September 20th 2021
\*GLOBAL_Adobe_AcrobatReaderDC_21.001.20142_001_P_EN_X64

-   GLOBAL_Adobe_AcrobatReaderDC_21.011.20039_001_P_EN_X64
-   GLOBAL_Adobe_AcrobatReaderDCMUI_17.012.20098_001_P_EN_x64
-   GLOBAL_Adobe_AcrobatReaderDCMUI_19.012.20036_001_P_EN_X64
-   GLOBAL_Adobe_AcrobatReaderDCMUI_20.009.20074_001_P_EN_X64
-   GLOBAL_Adobe_AcrobatReaderDCMUI_21.001.20142_001_P_EN_X64
-   GLOBAL_Adobe_AcrobatReaderDCMUI_21.011.20039_001_P_EN_X64
-   GLOBAL_Adobe_AcrobatReaderDCMUI_22.002.20212_001_P_EN_x86
-   GLOBAL_Adobe_AcrobatReaderDCMUI_CurrentVersion_001_P_EN_x64\*
-   GLOBAL_Adobe_FlashPlayerActiveX_32.0.0.403_001_P_EN_X86
-   GLOBAL_Adobe_FlashPlayerNPAPI_32.0.0.403_001_P_EN_X86
-   GLOBAL_Adobe_FlashPlayerPPAPI_24.0.0.186_001_P_EN_x64
-   GLOBAL_Adobe_FlashPlayerPPAPI_32.0.0.403_001_P_EN_X64
-   GLOBAL_dotPDNLLC_paint.net_4.2.15_001_P_EN_X64
-   GLOBAL_dotPDNLLC_paint.net_4.3.7_001_P_EN_X64
-   GLOBAL_FoxitSoftwareInc._FoxitReader_10.1.1.37576_001_P_EN_X64
-   GLOBAL_FoxitSoftwareInc._FoxitReader_11.1.0.52543_001_P_EN_X64
-   GLOBAL_Foxit_FoxitPDFReader_CurrentVersion_001_P_EN_x64
-   GLOBAL_Google_Chrome_62.0.3202.89_001_P_EN_x64
-   GLOBAL_Google_Chrome_68.0.3440.106_001_P_EN_X64
-   GLOBAL_Google_Chrome_76.0.3809.100_001_P_EN_X64
-   GLOBAL_Google_Chrome_79.0.3945.130_001_P_EN_X64
-   GLOBAL_Google_Chrome_84.0.4147.89_001_P_EN_X64
-   GLOBAL_Google_Chrome_89.0.4389.82_001_P_EN_X64
-   GLOBAL_Google_Chrome_97.0.4692.99_001_P_EN_X64
-   GLOBAL_Google_Chrome_CurrentVersion_001_P_EN_x64\*
-   GLOBAL_IgorPavlov_7Zip_16.04_001_P_EN_x64
-   GLOBAL_IgorPavlov_7Zip_18.05.00.0_001_P_EN_X64
-   GLOBAL_IgorPavlov_7Zip_19.00.00.0_001_P_EN_X64
-   GLOBAL_IgorPavlov_7Zip_21.07.00.0_001_P_EN_X64
-   GLOBAL_inkscape_Inkscape_0.92.1_001_P_EN_x64
-   GLOBAL_Inkscape_Inkscape_1.0.2_001_P_EN_X64
-   GLOBAL_Inkscape_Inkscape_1.1.1_001_P_EN_X64
-   GLOBAL_IrfanSkiljan_IrfanView_CurrentVersion_001_P_EN_x64
-   GLOBAL_Microsoft_.NETFramework_4.6.1_001_P_EN_x86
-   GLOBAL_Microsoft_.NETFramework_4.6.2_001_P_EN_x64
-   GLOBAL_Microsoft_.NETFramework_4.7.1_001_P_EN_x64
-   GLOBAL_Microsoft_.NETFramework_4.7.2_001_P_EN_X64
-   GLOBAL_Microsoft_.NETFramework_4.8.03761_001_P_EN_X64
-   GLOBAL_Microsoft_Edge_89.0.774.48_001_P_EN_X86
-   GLOBAL_Microsoft_Edge_84.0.522.44_001_P_EN_X64
-   GLOBAL_Microsoft_Edge_97.0.1072.69_001_P_EN_X86
-   GLOBAL_Microsoft_Edge_CurrentVersion_001_P_EN_x64\*
-   GLOBAL_Microsoft_FSLogixApps_2.9.7654.46150_001_P_EN_X64
-   GLOBAL_Microsoft_FSLogixApps_2.9.7979.62170_001_P_EN_X64
-   GLOBAL_Microsoft_LocalAdministratorPasswordSolution_6.2.0.0_001_P_EN_X64
-   GLOBAL_Microsoft_FSLogixApps_CurrentVersion_001_P_EN_x64\*
-   GLOBAL_Microsoft_OpenJDK11_11.0.13.8_001_P_EN_X64
-   GLOBAL_Microsoft_OpenJDK16_16.0.2.7_001_P_EN_X64
-   GLOBAL_Microsoft_OpenJDK17_17.0.1.12_001_P_EN_X64
-   GLOBAL_Microsoft_Silverlight_5.1.41212.0_001_P_EN_x64
-   GLOBAL_Microsoft_Silverlight_5.1.41212.0_001_P_EN_x86
-   GLOBAL_Microsoft_Silverlight_5.1.50907.0_001_P_EN_x64
-   GLOBAL_Microsoft_Silverlight_5.1.50918.0_001_P_EN_X64
-   GLOBAL_Microsoft_SQLServerManagementStudio_15.0.18384.0_001_P_EN_X64
-   GLOBAL_Microsoft_SQLServerManagementStudio_15.0.18390.0_001_P_EN_X64
-   GLOBAL_Microsoft_SQLServerManagementStudio_CurrentVersion_001_P_EN_x64
-   GLOBAL_Microsoft_TeamsMachineWideInstaller_CurrentVersion_001_P_EN_x64\*
-   GLOBAL_Microsoft_VCRedist2010_10.0.40219_001_P_EN_x64
-   GLOBAL_Microsoft_VCRedist2010_10.0.40219_001_P_EN_x86
-   GLOBAL_Microsoft_VCRedist2012_11.0.61030.0_001_P_EN_x64
-   GLOBAL_Microsoft_VCRedist2012_11.0.61030.0_001_P_EN_x86
-   GLOBAL_Microsoft_VCRedist2013_12.0.30501.0_001_P_EN_x64
-   GLOBAL_Microsoft_VCRedist2013_12.0.30501.0_001_P_EN_x86
-   GLOBAL_Microsoft_VCRedist2013_12.0.40664.0_001_P_EN_X64
-   GLOBAL_Microsoft_VCRedist2013_12.0.40664.0_001_P_EN_X86
-   GLOBAL_Microsoft_VCRedist2015_14.0.23026.0_001_P_EN_x64
-   GLOBAL_Microsoft_VCRedist2015_14.0.23026.0_001_P_EN_x86
-   GLOBAL_Microsoft_VCRedist2017_14.11.25325.0_001_P_EN_x64
-   GLOBAL_Microsoft_VCRedist2017_14.11.25325.0_001_P_EN_x86
-   GLOBAL_Microsoft_VCRedist2019_14.22.27821.0_001_P_EN_X64
-   GLOBAL_Microsoft_VCRedist2019_14.22.27821.0_001_P_EN_X86
-   GLOBAL_Microsoft_VCRedist2019_14.26.28720.3_001_P_EN_X64
-   GLOBAL_Microsoft_VCRedist2019_14.26.28720.3_001_P_EN_X86
-   GLOBAL_Microsoft_VCRedist2019_14.28.29910.0_001_P_EN_X64
-   GLOBAL_Microsoft_VCRedist2019_14.28.29910.0_001_P_EN_X86
-   GLOBAL_Microsoft_VCRedist2019_14.30.30708.0_001_P_EN_X64
-   GLOBAL_Microsoft_VCRedist2019_14.30.30708.0_001_P_EN_X86
-   GLOBAL_Microsoft_VCRedist2022_14.30.30708.0_001_P_EN_X86
-   GLOBAL_Microsoft_VCRedist2022_14.30.30708.0_001_P_EN_X64
-   GLOBAL_Mozilla_FirefoxESR_68.4.2_001_P_EN_X64
-   GLOBAL_Mozilla_FirefoxESR_78.8.0_001_P_EN_X64
-   GLOBAL_Mozilla_FirefoxESR_91.5.0_001_P_EN_X64
-   GLOBAL_Mozilla_FirefoxESR_CurrentVersion_001_P_EN_x64\*
-   GLOBAL_Mozilla_Firefox_CurrentVersion_001_P_EN_x64\*
-   GLOBAL_Notepad++Team_Notepad++_7.8.3_001_P_EN_X64
-   GLOBAL_Notepad++Team_Notepad++_7.8.9_001_P_EN_X64
-   GLOBAL_Notepad++Team_Notepad++_7.9.3_001_P_EN_X64
-   GLOBAL_Notepad++Team_Notepad++_8.2.1_001_P_EN_X64
-   GLOBAL_Notepad++Team_Notepad++_CurrentVersion_001_P_EN_x64
-   GLOBAL_Oracle_Java_8.0.1110.14_001_P_EN_x64
-   GLOBAL_Oracle_Java_8.0.1110.14_001_P_EN_x86
-   GLOBAL_Oracle_Java_8.0.1510.12_001_P_EN_x64
-   GLOBAL_Oracle_Java_8.0.1510.12_001_P_EN_x86
-   GLOBAL_Oracle_Java_8.0.2610.12_001_P_EN_X64
-   GLOBAL_Oracle_Java_8.0.2810.9_001_P_EN_X64
-   GLOBAL_Oracle_Java_8.0.3210.7_001_P_EN_X64
-   GLOBAL_RogerZander_RuckZuckPowerShellProvider_1.6.1.1_001_P_EN_x64
-   GLOBAL_RogerZander_RuckZuckPowerShellProvider_1.7.2.0_001_P_EN_X64
-   GLOBAL_VideoLAN_VLCmediaplayer_2.2.6_001_P_EN_x64
-   GLOBAL_VideoLAN_VLCmediaplayer_3.0.11_001_P_EN_X64
-   GLOBAL_VideoLAN_VLCmediaplayer_3.0.12_001_P_EN_X64
-   GLOBAL_VideoLAN_VLCmediaplayer_3.0.16_001_P_EN_X64


'\*These packages will download the current version from Ruckzuck and
install it during the image generation.
