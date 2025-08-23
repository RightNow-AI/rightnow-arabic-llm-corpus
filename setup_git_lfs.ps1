# Setup Git LFS for Arabic LLM Dataset
Write-Host "🚀 Setting up Git LFS for Arabic LLM Dataset..." -ForegroundColor Green

# Initialize Git LFS
Write-Host "📦 Installing Git LFS..." -ForegroundColor Yellow
git lfs install

# Track large files
Write-Host "📁 Tracking large files..." -ForegroundColor Yellow
git lfs track "*.jsonl"
git lfs track "*.txt"  
git lfs track "*.json"

# Add .gitattributes to git
Write-Host "✅ Adding .gitattributes..." -ForegroundColor Yellow
git add .gitattributes

Write-Host ""
Write-Host "✅ Git LFS setup complete!" -ForegroundColor Green
Write-Host "📁 Large files (*.jsonl, *.txt, *.json) will be tracked by LFS" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. git add ." -ForegroundColor White
Write-Host "2. git commit -m 'Initial commit: Arabic LLM Dataset'" -ForegroundColor White  
Write-Host "3. git push origin main" -ForegroundColor White
