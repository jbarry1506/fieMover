#Author:  Jim Barry

#Powershell Script to automate moving audio files from child folders 
#to main folder for easier searching while DJing

Write-Host "Filemover2 is online"

$sourcefolder = "c:\users\beast\music"

$files = Get-ChildItem -Recurse $sourcefolder | where {$_.PSIScontainer -eq $false}
foreach ($file in $files)
	{
		$destinationFolder = "c:\users\beast\music";
		move-item $file.FullName $destinationFolder;
	}