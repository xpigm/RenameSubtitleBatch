$VideoExt = Read-Host "输入视频扩展名"
$SubtitleExt = Read-Host "输入字幕扩展名"

$vlist = ls $('*.'+$VideoExt) -Name
$slist = ls $('*.'+$SubtitleExt) -Name


Write-Output "预览改动:"
for($i=0;$i -lt $slist.Length; $i++){
    Write-Output "$($slist[$i])  ->  $($vlist[$i]+'.'+$SubtitleExt)"
}

$take = Read-Host "确认应用修改吗(Y/N)[N]"
if($take -eq 'Y'){
    for($i=0;$i -lt $slist.Length; $i++){
        Rename-Item $($slist[$i])  $($vlist[$i]+'.'+$SubtitleExt)
    }

    $slistNew = ls $('*.'+$SubtitleExt) -Name
    Write-Output "已应用修改"
    Write-Output $slistNew

}else{
    Write-Output "已取消"
}


