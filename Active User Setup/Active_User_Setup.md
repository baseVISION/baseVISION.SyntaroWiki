---
title: Active User Setup
permalink: /Active_User_Setup/
---

## Why you need this

We all know, that sometimes applications need user settings in the
Current User Registry or File Changes in the User Profile. Therefore,
two main Technologies could be used:
\* MSI Repair / Advertised Shortcuts

-   Active Setup

Most of the Package Engineers we know use Active Setup, when the package
was not MSI based or some special things had to be executed.
The solution was really cool and helped a lot. This functionality is
also built-in in famous package wrapping utilities like the
PSAppDeployToolkit.
Now the main Issue is, that Active Setup entries are not migrated during
an Inplace Upgrade of Windows 10.

This led to one question, why is it not migrated? And we found an answer
which we never imagined:
Active Setup is not a public available functionality and is not
supported for use by other components than the operating system.
This was already written in 2011, but was not that important, because
Inplace updates where not required that often.

This is why we created Active User Setup, an alternative that will still
work after a Inplace Upgrade.

The solution has the following features:
\* Logging of actions to %TEMP%\ActiveUserSetup.log

-   Executing things once for every user, after login
-   Versioning of the actions, so if you change something, the action
    will be executed again for every user
-   Success Exit Code definition, to have a retry if the action failed
    on the last login.
-   Wait on Exit of the process (Synchronous or Async Mode)

## Active User Setup Documentation

First you need to install the ActiceUserSetup MSI on your Computers.
If you want to execute something once in the User Context, when the user
is logged on, then you have to create a key under:
HKEY_LOCAL_MACHINE\SOFTWARE\ActiveUserSetup

The name of that key needs to be unique. So, a good way to guarantee
that would be to use a GUID.

You can then create the following entries below it, depending on your
needs:

|                       |           |                   |                                                                                                                                                |
|-----------------------|-----------|-------------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| **Item**              | **Type**  | **Optional/Must** | **Description**                                                                                                                                |
| Execute               | REG_SZ    | Must              | The Command that gets executed. If the Command needs arguments, provide them in the dedicated argument Item.                                   |
| Argument              | REG_SZ    | Optional          | The Arguments for your Exe                                                                                                                     |
| Name                  | REG_SZ    | Optional          | A name that explains what this task is about. If you use a GUID as the Key name this helps you understand what that task does.                 |
| Version               | REG_SZ    | Optional          | The Version will be written to the user registry and when you change it here the task will get executed once more.                             |
| SuccessfulReturnCodes | REG_SZ    | Optional\*        | A list separated by “;” that indicates that your task runs successful.                                                                         |
| WaitOnFinish          | REG_DWORD | Optional\*        | Set it to 1 if you want the tool to wait for that task to finish.                                                                              |
| OnlyWhenSuccessful    | REG_DWORD | Optional          | Set it to 1 if you want the User Registry Part only to be written when the Exit Code was one from your list.                                   |
| WindowStyle           | REG_DWORD | Optional          | If you want the command window in a specific size set it to 1 for Maximized, 2 for Minimized or 3 for Hidden This needs at least Version 1.1.0 |
| NoToast               | REG_DWORD | Optional          | Set it to 1 if you want no Toast Notification. This needs at least Version 1.1.1                                                               |

The items with a \* are a must when you use “OnlyWhenSuccessful”

The tool then runs as a Scheduled Task on every user logon.

It logs to %TEMP%\ActiveUserSetup.log

## Examples

Here is an example of the Registry:
Windows Registry Editor Version 5.00

\[HKEY_LOCAL_MACHINE\SOFTWARE\ActiveUserSetup\Demo_Key_All_Commands\]
"Execute"="C:\\WINDOWS\\system32\\msiexec.exe"
"Argument"="/fu {BA95F312-9799-4BAE-ABAF-974ED79DD979} /qb-!"
"Name"="Test Key"
"Version"="1"
"SuccessfulReturnCodes"="0;3010"
"WaitOnFinish"=dword:00000001
"OnlyWhenSuccessful"=dword:00000001
"WindowStyle"=dword:00000003
"NoToast"=dword:00000001

## Template

Here you find the content of a Regfile that you can use as a Template
and customize as needed.
Windows Registry Editor Version 5.00

\[HKEY_LOCAL_MACHINE\SOFTWARE\ActiveUserSetup\]

\[HKEY_LOCAL_MACHINE\SOFTWARE\ActiveUserSetup\\AUniqueName%\]
"Execute"="%TheFileYouWantToExecute%"
"SuccessfulReturnCodes"="0;3010;%OrWathEverYouNeed%"
"WaitOnFinish"=dword:00000001
"OnlyWhenSuccessful"=dword:00000001
"Name"="%TheUserfrendlyNameOfTheTask"
"Version"="%AnyValue%"
"Argument"="%ArgumentsForYourExecutable%"
"WindowStyle"=dword:00000000
"NoToast"=dword:00000000

## Where you can get it

You can download a pre created MSI or you can create your own MSI file
from the SourceCode on
[GitHub](https://github.com/ThomasKur/ModernAndSecureWorkplace/tree/master/ActiveUserSetup/ActiveUserSetupSolution).