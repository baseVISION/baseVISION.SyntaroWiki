$HeaderLineCount = 12
$FooterLineCount = 14

$WindowsVersion= ([System.Environment]::OSVersion.Version).ToString()
$Delimiter = (Get-Culture).TextInfo.ListSeparator

$ThisScriptParentPath = Split-Path $script:MyInvocation.MyCommand.Path

If(($ThisScriptParentPath.Substring($ThisScriptParentPath.length-1) -eq "\")-eq $False){
    $ThisScriptParentPath = $ThisScriptParentPath+"\"
}

$OutPutFile = $ThisScriptParentPath +"_FeaturesList_from_Windows_$WindowsVersion.csv"


If(Test-Path $OutPutFile){Remove-Item $OutPutFile}

try{
    $p = Start-Process -FilePath "dism.exe" -PassThru -Wait -ArgumentList "/online /get-features /format:table" -ErrorAction Stop -WindowStyle Hidden

    if($p.ExitCode -eq 0){
        Write-Host "Dism exited successfully"
    }
    ElseIf($p.ExitCode -eq 740){
        throw "DISM Command failed (Exit Code $($p.ExitCode)). You need to execute the Script as an Admin"

    }
    else {
        throw "DISM Command failed (Exit Code $($p.ExitCode))."
    }


    $Result = dism /online /get-features /format:table

    $Features = $Result | Select-Object -Skip $HeaderLineCount | Select-Object -First ($Result.Count - $FooterLineCount) |
    ConvertFrom-Csv -Header "Feature","State" -Delimiter "|" | ConvertTo-Csv -Delimiter $Delimiter -NoTypeInformation
    Out-File -Force -NoClobber -InputObject $Features -FilePath $OutPutFile -Encoding ascii
}
catch{
    $wshell = New-Object -ComObject Wscript.Shell
    $wshell.Popup("$_",0,"Error",0x10)
}