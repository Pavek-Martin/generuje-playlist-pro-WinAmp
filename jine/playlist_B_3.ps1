cls



Get-ChildItem -recurse | where {$_.extension -eq '.mp4' -Or $_.extension -eq '.mp3'} | Resolve-Path -Relative | Out-File -Encoding UTF8 -FilePath 'zzzzz.m3u'

#Get-ChildItem -recurse | where {$_.extension -eq '.mp4' -Or $_.extension -eq '.mp3'} | select -ExcludeProperty FUllName | Out-File -Encoding UTF8 -FilePath 'xxxxx.m3u'



