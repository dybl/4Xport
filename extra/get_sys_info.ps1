
$header = 'Hostname','OSName','OSVersion','OSManufacturer','OSConfig','Buildtype',`
'RegisteredOwner','RegisteredOrganization','ProductID','InstallDate','StartTime','Manufacturer',`
'Model','Type','Processor','BIOSVersion','WindowsFolder','SystemFolder','StartDevice','Culture',`
'UICulture','TimeZone','PhysicalMemory','AvailablePhysicalMemory','MaxVirtualMemory',`
'AvailableVirtualMemory','UsedVirtualMemory','PagingFile','Domain','LogonServer','Hotfix',`
'NetworkAdapter'
systeminfo.exe /FO CSV |
  Select-Object -Skip 1 |
  ConvertFrom-CSV -Header $header