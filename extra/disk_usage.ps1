$DiskCount = ((Get-WmiObject -Class Win32_DiskDrive).Caption).count
#��ȡ���̷�����С
$DiskInfo = Get-WmiObject -Class Win32_LogicalDisk 
echo "--------------------ͳ�ƴ��̷���״��-------------------------"
echo "   ��������     ���    �����ռ�     ���ÿռ�     �ļ�ϵͳ   "        
foreach ($Drivers in $DiskInfo) 
{
    $PartitionID = $Drivers.DeviceID
    $PartitionSize = "{0:N2}GB" -f ($Drivers.Size/1GB)
    $PartitionFreeSize = "{0:N2}GB" -f ($Drivers.FreeSpace/1GB)
    $PartitionName = $Drivers.VolumeName
    $PartitionFS = $Drivers.FileSystem
    echo "    $PartitionID        $PartitionName    $PartitionSize        $PartitionFreeSize        $PartitionFS    "    
}