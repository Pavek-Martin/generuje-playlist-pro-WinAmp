cls



#Get-ChildItem *.* -include *.flac,*.ogg,*.mp3 -name | Out-File -Encoding UTF8 00-playlist.m3u
#Get-ChildItem *.* -include *.flac,*.ogg,*.mp3 -name | Out-File -Encoding UTF8 playlist.m3u
#sleep 1

# dir /B /ON *.mp3 > list.m3u
# uplne to samy ale  v cmd.exe


$GetPath=Read-Host -Prompt 'Library Folder Path'
$dir=dir $GetPath |?{$_.PSISContainer}
foreach ($d in $dir){
$path=$d.FullName

Get-Childitem -Path $path -include *.flac,*.ogg,*.mp3 -name | Out-File -encoding UTF8 $path\"$d.m3u"
}

