﻿cls

#$path = 'R:\221.mp3'
#$path = 'R:\4357.mp3'
#$path = "C:\Users\DELL\Documents\ps1\delka_mp3\221.mp3"
$path = "C:\Users\DELL\Music\Modern Talking - Discography\01 - 1st Album\01 - Modern Talking - You're My Heart, You're My Soul.mp3"
echo $path

$shell = New-Object -ComObject Shell.Application
#echo $shell
$folder = Split-Path $path # = R:\
echo $folder

$file = Split-Path $path -Leaf # = 221.mp3
echo $file

#$file_2 = Split-Path $path -NoQualifier
#echo $file_2
$ShellFolder = $shell.NameSpace($folder)
$ShellFile = $ShellFolder.ParseName($file)

$Mp3Lenght =  $ShellFolder.GetDetailsOf($ShellFile, 27);
echo $Mp3Lenght



sleep 20








