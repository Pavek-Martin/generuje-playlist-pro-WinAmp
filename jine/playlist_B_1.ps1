cls



cgi -recurse | where {$_.extension -eq '.mp4' -Or $_.extension -eq '.mp3'} | Resolve-Path -Relative | Out-File -Encoding UTF8 -FilePath 'playlist.m3u'




