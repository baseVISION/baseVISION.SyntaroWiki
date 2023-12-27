$WindowsVersion= ([System.Environment]::OSVersion.Version).ToString()
$Delimiter = (Get-Culture).TextInfo.ListSeparator

$ThisScriptParentPath = Split-Path $script:MyInvocation.MyCommand.Path
$OutPutFile = $ThisScriptParentPath +"\_InstalledAppxPackages_from_Windows_$WindowsVersion.csv"

If(Test-Path $OutPutFile){Remove-Item $OutPutFile}

Get-AppxPackage | Export-Csv -Delimiter $Delimiter -Force -Path $OutPutFile -NoClobber -NoTypeInformation