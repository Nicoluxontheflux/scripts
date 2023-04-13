$installPath = $env:TEMP;
$exeName = "pia-Setup-3.0.2.exe"; 
(New-Object System.Net.WebClient).DownloadFile("https://github.com/LINCnil/pia/releases/download/v3.0.3/pia-Setup-3.0.3.exe", "$installPath\$exeName"); 
Start-Process -FilePath "$installPath\$exeName" -Args "/S /allusers" -Wait; 
Remove-Item "$installPath\$exeName";