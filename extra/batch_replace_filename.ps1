<#
文件：batch_replace_filename.ps1
用途：用于批量替换文件名的脚本
创建：2019-08-11，j9
修改：2019-08-12，j9
#>
$Path = '.'         #当前路径
#$Filter = '*.txt'   #过滤条件，可用正则表达式，比如文件名的后缀
$new_text = '.sql'  #新字符串，替换后的结果
$old_text = '.txt'  #需要替换的旧字符串
ls $Path <#-include $Filter#> -Recurse |ForEach-Object{Rename-Item $_.FullName $_.FullName.Replace($old_text, $new_text)}