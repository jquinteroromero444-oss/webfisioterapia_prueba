$git = "C:\Users\jquin\AppData\Local\MinGit\cmd\git.exe"
Set-Location "c:\Users\jquin\Downloads\fisioterapia-web"

Write-Host "Inicializando Git..."
& $git init
& $git branch -M main

$remotes = & $git remote
if ($remotes -contains "origin") {
    & $git remote set-url origin https://github.com/jquinteroromero444-oss/webfisioterapia_prueba.git
} else {
    & $git remote add origin https://github.com/jquinteroromero444-oss/webfisioterapia_prueba.git
}

Write-Host "Añadiendo archivos..."
& $git add .

Write-Host "Comprobando estado..."
& $git status

Write-Host "Realizando commit..."
& $git commit -m "Publicación inicial: Web responsiva Kineva Fisioterapia"

Write-Host "Haciendo push a GitHub..."
& $git push -u origin main
