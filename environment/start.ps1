$filePath = "$PSScriptRoot\Go_Development_Sandbox_4Gb_RAM.wsb"
$newHostFolderValue = "$PSScriptRoot\Scripts"

# Load the XML content from the file
$xml = [xml](Get-Content $filePath)

# Find the first HostFolder element and update its value
$firstHostFolder = $xml.SelectSingleNode("//HostFolder[1]")
$firstHostFolder.InnerText = $newHostFolderValue

# Find the second HostFolder element and update its value
$secondHostFolder = $xml.SelectSingleNode("/Configuration/MappedFolders/MappedFolder[2]/HostFolder[1]")
$secondHostFolder.InnerText = $(Get-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders").PSObject.Properties["{374DE290-123F-4565-9164-39C4925E467B}"].Value 

# Save the updated XML back to the file
$xml.Save($filePath)

.\Go_Development_Sandbox_4Gb_RAM.wsb
