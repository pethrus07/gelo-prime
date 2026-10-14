# Gera as duas versões da arte (feed 4:5 e story 9:16) a partir de revendedor.html
$chrome = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$dir = $PSScriptRoot
$url = "file:///" + ($dir -replace '\\','/') + "/revendedor.html"
$formatos = @{ feed = "1080,1350"; story = "1080,1920" }
foreach ($f in $formatos.Keys) {
  & $chrome --headless=new --hide-scrollbars --enable-unsafe-swiftshader --force-device-scale-factor=1 `
    "--window-size=$($formatos[$f])" --virtual-time-budget=20000 `
    "--screenshot=$dir\gelo-prime-revendedor-$f.png" "$url#$f" 2>$null | Out-Null
  Write-Output "$f ok"
}
