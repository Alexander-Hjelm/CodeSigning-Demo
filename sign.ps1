param(
    [string]
    $pfxPath
)
$signtoolPath = "C:\Program Files (x86)\Microsoft SDKs\ClickOnce\SignTool\signtool.exe"
$dllLocation = "$env:Build_SourcesDirectory\src\bin\Debug\netcoreapp2.2\CodeSigning-Demo.dll"
Write-Host "Trying to sign following DLL - $dllLocation"
Write-Host "PFX path - $pfxPath"

& $signtoolPath sign /debug /f $pfxPath /p $env:pfxPassword "$dllLocation"
