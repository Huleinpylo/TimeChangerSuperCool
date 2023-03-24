$files = Get-ChildItem -Force | Where-Object { !$_.PSIsContainer }

foreach ($object in $files) {
    $date = Get-Date -Year (Get-Random -Minimum 2000 -Maximum (Get-Date).Year) -Month (Get-Random -Minimum 1 -Maximum 13) -Day (Get-Random -Minimum 1 -Maximum 29)
    $object.CreationTime = $date
    $date = Get-Date -Year (Get-Random -Minimum 2000 -Maximum (Get-Date).Year)  -Month (Get-Random -Minimum 1 -Maximum 13) -Day (Get-Random -Minimum 1 -Maximum 29)
    $object.LastAccessTime = $date
    $date = Get-Date -Year (Get-Random -Minimum 2000 -Maximum (Get-Date).Year)  -Month (Get-Random -Minimum 1 -Maximum 13) -Day (Get-Random -Minimum 1 -Maximum 29)
    $object.LastWriteTime = $date
}