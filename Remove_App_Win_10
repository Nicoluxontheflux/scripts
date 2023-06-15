$Ps1FileName = 'AppXRemoval_Win10.ps1'

$Ps1ScriptBody = @"
# Apps to remove
`$appname = @(
'*Microsoft.BingFinance*'
'*Microsoft.SkypeApp*'
'*Twitter*'
'*Microsoft.3DBuilder*'
'*king.com.CandyCrushSodaSaga*'
'*Microsoft.BingNews*'
'*Microsoft.WindowsMaps*'
'*Microsoft.BingSports*'
'*Microsoft.Office.OneNote*'
'*Microsoft.MicrosoftSolitaireCollection*'
'*Microsoft.WindowsAlarms*'
'*Microsoft.BingWeather*'
'*Microsoft.XboxApp*'
)
# Removes the above apps
ForEach(`$app in `$appname){
    Get-AppxPackage -Name `$app | Remove-AppxPackage -ErrorAction SilentlyContinue
}

# Deletes the .bat and the .ps1  
Remove-Item -Path "`$env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\startup\LogOn.bat"  -Force
Remove-Item -Path "`$env:USERPROFILE\AppData\local\AppXRemoval_Win10.ps1"  -Force
"@

$BatBody = @" 
@echo off
start Powershell.exe -executionpolicy remotesigned -windowstyle hidden -File  %userprofile%\AppData\Local\AppXRemoval_Win10.ps1 /min
"@

$users = Get-ChildItem -Path "C:\Users" | ? {$_.Name -NE 'Public'} 

foreach($user in $users){
    
New-Item -Path "C:\Users\$($user.name)\AppData\local" -Name $Ps1FileName  -ItemType "file" -Value $Ps1ScriptBody 

New-Item -Path "C:\Users\$($user.name)\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" -Name "LogOn.bat" -ItemType "file" -Value $BatBody

Write-Host "New Hostname Found: $($content.DisplayName)"
Rename-Computer -NewName $newname -Force
Write-Host "$oldName was renamed to $newName"
Write-Host "The changes will takes effect after you restart the computer
}
if ([
    $newName become $oldName -Force 
    catch {
        "could not resolve"

        $content = Invoke-RestMehod -Method GET-Uri "https://console.jumpcloud.com/api/systems/$systemKey" -contentype 'applications/json' -Headers $headers -UserBasicParsing 
Write-h
    }
]) 
