$Path = '.'
$Filter = '*.txt'
$new_text = '.sql'
$old_text = '.txt'
ls $Path -Recurse |ForEach-Object{Rename-Item $_.FullName $_.FullName.Replace($old_text, $new_text)}