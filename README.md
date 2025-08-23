# RightNow Arabic LLM Corpus

**One of the largest high-quality Arabic text datasets for Large Language Model training and fine-tuning**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Arabic](https://img.shields.io/badge/Language-Arabic-green.svg)](https://en.wikipedia.org/wiki/Arabic_language)
[![Size](https://img.shields.io/badge/Size-8.7GB-blue.svg)](#dataset-statistics)
[![Articles](https://img.shields.io/badge/Articles-743K-red.svg)](#dataset-statistics)

---

## Overview

This repository contains a comprehensive Arabic text dataset specifically curated for training and fine-tuning Large Language Models (LLMs). The dataset represents one of the largest collections of high-quality Arabic text available for machine learning research and commercial applications.

**Collected by [RightNow AI](https://www.rightnowai.co/) team and [Al Hussein Technical University](https://www.htu.edu.jo/)** - RightNow AI is the first GPU-powered AI code editor, advancing Arabic AI capabilities through quality datasets and innovative development tools.

## Dataset Statistics

| Metric | Value |
|--------|--------|
| **Total Articles** | 743,288 |
| **Total Words** | 244,153,780 |
| **Total Sentences** | 12,392,064 |
| **Unique Words** | 1,529,064 |
| **Vocabulary Richness** | 0.0063 |
| **Average Words/Article** | 328.5 |
| **Average Sentences/Article** | 16.7 |
| **Average Words/Sentence** | 19.7 |
| **High Quality Articles** | 185,351 (≥70% quality score) |
| **Dataset Size** | 8.7GB (JSONL) |

## Key Features

- **Massive Scale**: 744K articles, 244M words
- **High Quality**: Professional cleaning and filtering
- **LLM Ready**: Optimized JSONL format for training
- **Diverse Content**: Multiple topics and domains
- **Clean Text**: Removed artifacts, references, templates
- **UTF-8 Encoded**: Proper Arabic text encoding
- **Metadata Rich**: Comprehensive article information

## Repository Structure

```
├── README.md                           # This file
├── arabic_wikipedia_cleaned.jsonl      # Main dataset (8.7GB)
├── arabic_wikipedia_cleaned.txt        # Human-readable format (8.5GB)
├── dataset_metadata.json               # Dataset metadata
├── dataset/                            # Individual cleaned files
│   ├── arabic_text_*.jsonl              # 11,880 individual files
│   └── ...
└── analysis_reports/                   # Comprehensive analysis
    ├── dataset_analysis_*.json         # Detailed JSON analysis
    ├── dataset_report_*.txt            # Human-readable report
    ├── dataset_summary_*.csv           # Summary statistics
    └── dataset_documentation_*.md      # Markdown documentation
```

## Content Distribution

| Topic | Articles | Percentage |
|-------|----------|------------|
| General | 316,527 | 42.6% |
| History | 228,884 | 30.8% |
| Geography | 170,062 | 22.9% |
| Science | 118,536 | 15.9% |
| Religion | 104,378 | 14.0% |
| Politics | 87,366 | 11.8% |
| Arts | 78,915 | 10.6% |
| Literature | 76,566 | 10.3% |
| Sports | 71,171 | 9.6% |

## Quality Assessment

| Quality Level | Articles | Percentage |
|---------------|----------|------------|
| **Excellent** (≥80%) | 130,373 | 17.5% |
| **Good** (60-80%) | 306,526 | 41.2% |
| **Fair** (40-60%) | 117,976 | 15.9% |
| **Filtered Out** (<40%) | 188,413 | 25.3% |

**Average Quality Score: 58.3%**

## Usage

### Loading the Dataset

**Python (Recommended)**
```python
import json

# Load the main dataset
articles = []
with open('arabic_wikipedia_cleaned.jsonl', 'r', encoding='utf-8') as f:
    for line in f:
        article = json.loads(line)
        articles.append(article)

print(f"Loaded {len(articles)} articles")
```

**Hugging Face Datasets**
```python
from datasets import load_dataset

# Load from local files
dataset = load_dataset('json', data_files='arabic_wikipedia_cleaned.jsonl')
```

### Data Format

Each line in the JSONL file contains:
```json
{
  "id": "unique_article_id",
  "title": "Article Title",
  "text": "Clean Arabic text content...",
  "url": "source_url",
  "hash": "content_hash",
  "metadata": {
    "language": "ar",
    "source": "Multiple Sources",
    "cleaned": true,
    "processing_date": "2025-01-23T01:00:00"
  }
}
```

## Use Cases

This dataset is perfect for:

- **Arabic LLM Training**: GPT, BERT, T5, LLaMA models
- **Fine-tuning**: Domain-specific Arabic models  
- **Text Generation**: Content generation systems
- **NLP Research**: Arabic language processing research
- **Language Modeling**: Statistical language models
- **Transfer Learning**: Pre-trained model adaptation

## Data Processing Pipeline

Our comprehensive processing pipeline ensures high-quality data:

1. **Source Collection**: Aggregated from multiple high-quality Arabic sources
2. **Content Cleaning**: Removed artifacts, references, templates
3. **Quality Filtering**: Applied strict quality criteria (≥70% Arabic content)
4. **Length Filtering**: Removed very short or overly long content
5. **Deduplication**: Eliminated duplicate and near-duplicate content
6. **Validation**: Comprehensive format and encoding validation
7. **Analysis**: Detailed statistical analysis and quality assessment

## Dataset Metrics

### Length Distribution
- **Article Length**: 7 - 20,757 words (median: 106)
- **Sentence Length**: 1 - 3,131 words (average: 21)
- **Word Length**: 2 - 137 characters (average: 4.9)

### Language Quality
- **Arabic Content**: ≥70% Arabic characters per article
- **Encoding**: UTF-8 with proper Arabic support
- **Text Quality**: Professional cleaning and normalization

## Technical Specifications

- **Format**: JSONL (JSON Lines)
- **Encoding**: UTF-8
- **Language**: Arabic (ar)
- **Size**: 8.7GB compressed
- **Articles**: 743,288 unique articles
- **Vocabulary**: 1.5M unique words
- **Processing Date**: January 2025

## License

This dataset is released under the **MIT License**.

```
MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Dataset"), to deal
in the Dataset without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Dataset, and to permit persons to whom the Dataset is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Dataset.
```

## Contributing

We welcome contributions to improve the dataset quality and coverage:

1. **Quality Issues**: Report data quality problems
2. **Enhancement Suggestions**: Propose improvements
3. **Additional Sources**: Suggest new high-quality Arabic sources
4. **Processing Improvements**: Contribute to cleaning algorithms

## Contact

**RightNow AI** - The first GPU-powered AI code editor, advancing Arabic AI capabilities

- Website: [https://www.rightnowai.co/](https://www.rightnowai.co/)
- Email: [Contact through website](https://www.rightnowai.co/)
- Issues: [GitHub Issues](https://github.com/RightNow-AI/rightnow-arabic-llm-corpus/issues)

## Acknowledgments

This corpus was collected through the collaborative efforts of:

- **[RightNow AI](https://www.rightnowai.co/)** - The first GPU-powered AI code editor and AI research company
- **[Al Hussein Technical University](https://www.htu.edu.jo/)** - Leading technical university in Jordan

Special thanks to:
- The Arabic language community for content creation
- Open source contributors for processing tools
- The machine learning community for feedback and validation
- Both organizations for their dedication to advancing Arabic NLP research

## Citation

If you use this dataset in your research, please cite:

```bibtex
@dataset{rightnow_arabic_llm_corpus_2025,
  title={RightNow Arabic LLM Corpus},
  author={RightNow AI team and Al Hussein Technical University},
  year={2025},
  publisher={GitHub},
  url={https://github.com/RightNow-AI/rightnow-arabic-llm-corpus},
  note={One of the largest high-quality Arabic text datasets for LLM training}
}
```

---

**If this dataset helps your research or project, please star this repository!**

*Built for the Arabic AI community by [RightNow AI](https://www.rightnowai.co/) and [Al Hussein Technical University](https://www.htu.edu.jo/)*
