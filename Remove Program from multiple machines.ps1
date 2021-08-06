$Computers = Get-Content -path C:\Temp\computers.txt
Foreach ($Computer in $Computers) {
 Get-WmiObject -Class Win32_Product | Select-Object -Property Name
 $MyApp = Get-WmiObject -Class Win32_Product | Where-Object{$_.Name -eq "7-Zip 19.00"}
 $MyApp.Uninstall
 Get-Package -Provider Programs -IncludeWindowsInstaller -Name "7-Zip 19.00"
 Uninstall-Package -Name "7-Zip 19.00"
 }