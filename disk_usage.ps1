$DiskCount = ((Get-WmiObject -Class Win32_DiskDrive).Caption).count
#获取磁盘分区大小
$DiskInfo = Get-WmiObject -Class Win32_LogicalDisk 
echo "--------------------统计磁盘分区状况-------------------------"
echo "   驱动器号     卷标    分区空间     可用空间     文件系统   "        
foreach ($Drivers in $DiskInfo) 
{
    $PartitionID = $Drivers.DeviceID
    $PartitionSize = "{0:N2}GB" -f ($Drivers.Size/1GB)
    $PartitionFreeSize = "{0:N2}GB" -f ($Drivers.FreeSpace/1GB)
    $PartitionName = $Drivers.VolumeName
    $PartitionFS = $Drivers.FileSystem
    echo "    $PartitionID        $PartitionName    $PartitionSize        $PartitionFreeSize        $PartitionFS    "    
}