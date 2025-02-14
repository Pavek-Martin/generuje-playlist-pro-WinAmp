cls



#Get-ChildItem -recurse | where {$_.extension -eq '.mp4' -Or $_.extension -eq '.mp3'} | Resolve-Path -Relative | Out-File -Encoding UTF8 -FilePath 'playlist_B3.m3u'
Get-ChildItem -recurse | where {$_.extension -eq '.mp4' -Or $_.extension -eq '.mp3'} |  Resolve-Path -Relative | Out-File -Encoding UTF8 playlist_B_4.m3u



