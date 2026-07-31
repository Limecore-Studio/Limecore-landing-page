$localPath = "C:\Users\emilh\Downloads\limecore-site"
Set-Location $localPath

git init
git config user.name "Limekana"
git config user.email "limekana@users.noreply.github.com"
git add .
git commit -m "Initial commit — Limecore landing page"
git branch -M main

# This will open browser/credential prompt for GitHub login
git remote add origin https://github.com/Limekana/limecore-site.git
git push -u origin main
