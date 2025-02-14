cls



#Get-ChildItem *.* -include *.flac,*.ogg,*.mp3 -name | Out-File -Encoding UTF8 00-playlist.m3u
#Get-ChildItem *.* -include *.flac,*.ogg,*.mp3 -name | Out-File -Encoding UTF8 playlist.m3u
#sleep 1

# dir /B /ON *.mp3 > list.m3u
# uplne to samy ale  v cmd.exe

#$GetPath=Read-Host -Prompt 'Library Folder Path'

$GetPath="C:\Users\DELL\Music\"

$dir=dir $GetPath |?{$_.PSISContainer}
foreach ($d in $dir){
echo $d
$path=$d.FullName

#$path=$GetPath.FullName

#Get-Childitem -Path $path -include *.flac,*.ogg,*.mp3 -name | Out-File -encoding UTF8 $path\"$d.m3u"
#Get-Childitem -Path $path -include *.flac,*.ogg,*.mp3 -name | Out-File -Encoding UTF8 $path\"$d.FullName.m3u"
Get-Childitem -Path $path -include *.flac,*.ogg,*.mp3 -name | Out-File -Encoding UTF8 $path\"$d.m3u"

}



