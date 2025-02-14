
$sourcePlayList="R:\Added.m3u"
$outputPath="M:\S6\music\"
$regExKeep="volume1\/music\/.*"
#C:\Users\DELL\Music\
$regExExclude="#EXTURL:.*"
$rawPlayListValues = Get-Content $sourcePlayList



foreach ($item in $rawPlayListValues) {
  #First extract the path
  if($item -match $regExExclude){
  }
  elseif($item -match $regExKeep){
   $item = $matches[0] -replace "volume1\/music\/",""
   
   $sourceitem = "X:\$item"
   $sourceitem = Get-Item -Literalpath $sourceitem
   
   $dir = $sourceitem.DirectoryName.Replace("X:\",$outputPath)
   
   $target = $sourceitem.FullName.Replace("X:\",$outputPath)

            if (!(test-path -LiteralPath $dir)) 
   {
    mkdir $dir
   }
   
   if (!(test-path -LiteralPath $target))
   {
    Copy-Item -Literalpath $sourceitem.FullName -Destination $target -Recurse -Force
   }

   Write-Host $item
  } 
}




