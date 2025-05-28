#!/bin/bash

# Repository Health Check Script
# Validates the repository structure and key components

echo "🔍 Pine Script V6 Master Repository Health Check"
echo "================================================"
echo

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to check if directory exists
check_directory() {
    if [ -d "$1" ]; then
        echo -e "${GREEN}✓${NC} Directory: $1"
        return 0
    else
        echo -e "${RED}✗${NC} Missing directory: $1"
        return 1
    fi
}

# Function to check if file exists
check_file() {
    if [ -f "$1" ]; then
        echo -e "${GREEN}✓${NC} File: $1"
        return 0
    else
        echo -e "${RED}✗${NC} Missing file: $1"
        return 1
    fi
}

# Function to check Pine Script files
check_pine_script() {
    if [ -f "$1" ]; then
        if grep -q "// @version=6" "$1"; then
            echo -e "${GREEN}✓${NC} Pine Script v6: $1"
            return 0
        else
            echo -e "${YELLOW}⚠${NC} Pine Script missing version: $1"
            return 1
        fi
    else
        echo -e "${RED}✗${NC} Missing Pine Script: $1"
        return 1
    fi
}

# Function to count files in directory
count_files() {
    local count=$(find "$1" -maxdepth 1 -type f 2>/dev/null | wc -l)
    echo -e "${BLUE}ℹ${NC} $1 contains $count files"
}

echo "📁 DIRECTORY STRUCTURE CHECK"
echo "----------------------------"

# Check main directories
directories=(
    "src"
    "src/indicators"
    "src/indicators/trend"
    "src/indicators/momentum"
    "src/indicators/volatility"
    "src/indicators/volume"
    "src/strategies"
    "src/strategies/trend-following"
    "src/strategies/mean-reversion"
    "src/strategies/breakout"
    "docs"
    "docs/source"
    "docs/guides"
    "templates"
    "templates/indicators"
    "templates/strategies"
    "tools"
    "tools/docker"
    "tools/scripts"
    "tools/requirements"
    ".github"
    ".github/workflows"
    ".github/ISSUE_TEMPLATE"
)

dir_score=0
for dir in "${directories[@]}"; do
    if check_directory "$dir"; then
        ((dir_score++))
    fi
done

echo
echo "📄 ESSENTIAL FILES CHECK"
echo "------------------------"

# Check essential files
files=(
    "README.md"
    "LICENSE"
    ".gitignore"
    ".markdownlint.json"
    "docs/source/conf.py"
    "docs/source/index.rst"
    "docs/source/indicators_toc.rst"
    "docs/source/strategies_toc.rst"
    "tools/docker/Dockerfile"
    "tools/docker/docker-compose.yml"
    "tools/requirements/requirements.txt"
    "tools/scripts/Makefile"
    "tools/scripts/setup.sh"
    ".github/workflows/documentation.yml"
    ".github/workflows/quality.yml"
    ".github/pull_request_template.md"
)

file_score=0
for file in "${files[@]}"; do
    if check_file "$file"; then
        ((file_score++))
    fi
done

echo
echo "🌲 PINE SCRIPT FILES CHECK"
echo "--------------------------"

# Check Pine Script files
pine_files=(
    "src/indicators/trend/multi_sma.pine"
    "src/indicators/momentum/enhanced_rsi.pine"
    "src/strategies/trend-following/mtf_trend_follower.pine"
    "templates/indicators/indicator_template.pine"
    "templates/strategies/strategy_template.pine"
)

pine_score=0
for pine in "${pine_files[@]}"; do
    if check_pine_script "$pine"; then
        ((pine_score++))
    fi
done

echo
echo "📋 DOCUMENTATION CHECK"
echo "----------------------"

# Check documentation files
doc_files=(
    "src/indicators/trend/multi_sma.md"
    "src/indicators/momentum/enhanced_rsi.md"
    "src/strategies/trend-following/mtf_trend_follower.md"
)

doc_score=0
for doc in "${doc_files[@]}"; do
    if check_file "$doc"; then
        ((doc_score++))
    fi
done

echo
echo "🏷️ GITHUB TEMPLATES CHECK"
echo "-------------------------"

# Check GitHub templates
github_files=(
    ".github/ISSUE_TEMPLATE/bug_report.md"
    ".github/ISSUE_TEMPLATE/feature_request.md"
    ".github/ISSUE_TEMPLATE/script_submission.md"
)

github_score=0
for gh_file in "${github_files[@]}"; do
    if check_file "$gh_file"; then
        ((github_score++))
    fi
done

echo
echo "📊 CONTENT STATISTICS"
echo "---------------------"

# Count content
count_files "src/indicators/trend"
count_files "src/indicators/momentum"
count_files "src/indicators/volatility"
count_files "src/indicators/volume"
count_files "src/strategies/trend-following"
count_files "src/strategies/mean-reversion"
count_files "src/strategies/breakout"
count_files "templates/indicators"
count_files "templates/strategies"

echo
echo "🎯 REPOSITORY HEALTH SUMMARY"
echo "=============================="

total_dirs=${#directories[@]}
total_files=${#files[@]}
total_pine=${#pine_files[@]}
total_docs=${#doc_files[@]}
total_github=${#github_files[@]}

echo -e "Directory Structure: ${dir_score}/${total_dirs} ($(( dir_score * 100 / total_dirs ))%)"
echo -e "Essential Files: ${file_score}/${total_files} ($(( file_score * 100 / total_files ))%)"
echo -e "Pine Script Files: ${pine_score}/${total_pine} ($(( pine_score * 100 / total_pine ))%)"
echo -e "Documentation: ${doc_score}/${total_docs} ($(( doc_score * 100 / total_docs ))%)"
echo -e "GitHub Templates: ${github_score}/${total_github} ($(( github_score * 100 / total_github ))%)"

overall_score=$(( (dir_score + file_score + pine_score + doc_score + github_score) * 100 / (total_dirs + total_files + total_pine + total_docs + total_github) ))

echo
if [ $overall_score -ge 90 ]; then
    echo -e "${GREEN}🎉 EXCELLENT: Repository health is ${overall_score}%${NC}"
elif [ $overall_score -ge 80 ]; then
    echo -e "${BLUE}👍 GOOD: Repository health is ${overall_score}%${NC}"
elif [ $overall_score -ge 70 ]; then
    echo -e "${YELLOW}⚠️  FAIR: Repository health is ${overall_score}%${NC}"
else
    echo -e "${RED}🚨 NEEDS WORK: Repository health is ${overall_score}%${NC}"
fi

echo
echo "💡 RECOMMENDATIONS:"
echo "• Add more example indicators and strategies"
echo "• Create comprehensive API documentation"
echo "• Add usage examples in docs/examples/"
echo "• Set up automated testing for Pine Script syntax"
echo "• Consider adding performance benchmarks"

echo
echo "🚀 NEXT STEPS:"
echo "• Run 'cd tools/docker && docker-compose up' to test documentation"
echo "• Use 'cd tools/scripts && make help' to see available commands"
echo "• Check GitHub Actions will work by pushing to a repository"
echo "• Review and test all Pine Scripts in TradingView"

exit 0
