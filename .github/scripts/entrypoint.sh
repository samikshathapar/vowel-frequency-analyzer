
#!/bin/bash
set -e

cd /github/workspace

echo "Starting Frequency Analyzer..."

FREQ_RESULT=$(python3 .github/scripts/frequency.py "${FILE:-data.txt}")

echo "Vowel frequencies: $FREQ_RESULT"

bash .github/scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"

echo "Process Completed!"