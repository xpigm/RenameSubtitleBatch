$VideoExt = Read-Host "������Ƶ��չ��"
$SubtitleExt = Read-Host "������Ļ��չ��"

$vlist = ls $('*.'+$VideoExt) -Name
$slist = ls $('*.'+$SubtitleExt) -Name


Write-Output "Ԥ���Ķ�:"
for($i=0;$i -lt $slist.Length; $i++){
    Write-Output "$($slist[$i])  ->  $($vlist[$i]+'.'+$SubtitleExt)"
}

$take = Read-Host "ȷ��Ӧ���޸���(Y/N)[N]"
if($take -eq 'Y'){
    for($i=0;$i -lt $slist.Length; $i++){
        Rename-Item $($slist[$i])  $($vlist[$i]+'.'+$SubtitleExt)
    }

    $slistNew = ls $('*.'+$SubtitleExt) -Name
    Write-Output "��Ӧ���޸�"
    Write-Output $slistNew

}else{
    Write-Output "��ȡ��"
}


