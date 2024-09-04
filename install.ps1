if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
    # Relaunch the script as administrator
    $newProcess = Start-Process -FilePath "powershell.exe" -ArgumentList "-File", "`"$PSCommandPath`"" -Verb RunAs -PassThru
    $newProcess.WaitForExit()
    exit
}

scoop bucket add extras
scoop install extras/autohotkey

$installerPath = "$env:SCOOP\apps\UnityVCS\unity-vcs-11.0.16.8798-win.exe"
Invoke-WebRequest -Uri "https://www.plasticscm.com/download/downloadinstaller/11.0.16.8798/plasticscm/windows/cloudedition?flags=None" -OutFile $installerPath
Start-Process -FilePath $installerPath -PassThru -Wait
Start-Process -FilePath "$env:SCOOP\apps\automateVCSInstall.exe"