# 🚀 GitHub Upload Instructions

## Prerequisites
- Git installed
- Git LFS installed (`git lfs install`)
- GitHub account with repository created

## Step-by-Step Upload Process

### 1. Initialize Repository
```powershell
cd arabic-llm-dataset
git init
git branch -M main
```

### 2. Setup Git LFS (Large File Storage)
```powershell
# Run the setup script (Windows)
.\setup_git_lfs.ps1

# Or manually:
git lfs install
git lfs track "*.jsonl"
git lfs track "*.txt" 
git lfs track "*.json"
```

### 3. Add Remote Repository
```powershell
# Add RightNow-AI organization repository
git remote add origin https://github.com/RightNow-AI/rightnow-arabic-llm-corpus.git
```

### 4. Commit and Push
```powershell
# Add all files
git add .

# Commit with descriptive message
git commit -m "Initial commit: RightNow Arabic LLM Corpus - 744K articles, 244M words"

# Push to GitHub
git push -u origin main
```

## 📁 Final Repository Structure
```
├── README.md                         # Professional documentation
├── arabic_wikipedia_cleaned.jsonl    # Main dataset (2.8GB)
├── arabic_wikipedia_cleaned.txt      # Human-readable format (2.6GB)
├── dataset_metadata.json             # Clean metadata
├── dataset/                          # Individual files
│   └── *.jsonl                       # 11,880 cleaned files
└── analysis_reports/                 # Comprehensive analysis
    ├── dataset_analysis_*.json
    ├── dataset_report_*.txt
    ├── dataset_summary_*.csv
    └── dataset_documentation_*.md
```

## ⚡ Quick Commands
```powershell
# One-liner setup and upload
git init; git branch -M main; git lfs install; git lfs track "*.jsonl"; git lfs track "*.txt"; git lfs track "*.json"; git add .; git commit -m "RightNow Arabic LLM Corpus: 744K articles"; git remote add origin https://github.com/RightNow-AI/rightnow-arabic-llm-corpus.git; git push -u origin main
```

## 🔧 Troubleshooting

### Large File Issues
- Ensure Git LFS is properly configured
- Check `.gitattributes` file exists
- Verify large files are tracked: `git lfs ls-files`

### Upload Speed
- LFS files upload separately and may take time
- Monitor progress: `git lfs status`

## 📝 Notes
- Total upload size: ~5.5GB
- Main files will use Git LFS automatically
- Upload time depends on internet speed
- GitHub has LFS bandwidth limits (check your plan)
