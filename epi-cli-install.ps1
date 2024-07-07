Invoke-WebRequest -Uri "https://github.com/tuyen-at-work/dev-tools/releases/download/windows/epi-cli-x86_64-pc-windows-msvc.7z" -OutFile "epi-cli.7z"
7z x epi-cli.7z -bsp0 -bso0
Remove-Item epi-cli.7z
New-Item -ItemType Directory -Force -Path $env:USERPROFILE\bin | Out-Null
Move-Item ./epi.exe $env:USERPROFILE/bin/
echo "$env:USERPROFILE/bin" | Out-File -Append -Encoding utf8 -FilePath $env:GITHUB_PATH