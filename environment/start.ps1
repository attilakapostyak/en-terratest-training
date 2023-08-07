$filePath = "$PSScriptRoot\Go_Development_Sandbox_4Gb_RAM.wsb"
$newHostFolderValue = "$PSScriptRoot\Scripts"

# Load the XML content from the file
$xml = [xml](Get-Content $filePath)

# Find the first HostFolder element and update its value
$firstHostFolder = $xml.SelectSingleNode("//HostFolder[1]")
$firstHostFolder.InnerText = $newHostFolderValue
$firstHostFolder
# Save the updated XML back to the file
$xml.Save($filePath)

.\Go_Development_Sandbox_4Gb_RAM.wsb
