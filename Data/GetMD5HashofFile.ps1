$ThisScriptParentPath = Split-Path $script:MyInvocation.MyCommand.Path


#Select File
[System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null
$dialog = New-Object System.Windows.Forms.OpenFileDialog
#$dialog = New-Object System.Windows.Forms.OpenFileDialog
$dialog.DefaultExt = '.wim'
$dialog.Filter = 'WIM|*.wim|All Files|*.*'
$dialog.FilterIndex = 0
$dialog.InitialDirectory = $ThisScriptParentPath
$dialog.Multiselect = $false
$dialog.RestoreDirectory = $true
$dialog.Title = "Select a File"
$dialog.ValidateNames = $true
$dialog.ShowDialog()
$SelectedFile = $dialog.FileName

$FileHash = (Get-FileHash -Algorithm MD5 -Path $SelectedFile).hash

#ShowMD5 Hash
[void][Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')
$title = "MD5 Hash"
$msg   = "The MD5 Hash of the File $SelectedFile is:"
[Microsoft.VisualBasic.Interaction]::InputBox($msg, $title,$FileHash)