
#!/bin/bash
set -e

FREQ_RESULT="$1"
GITHUB_USER="$2"
TIMESTAMP=$(date -u +"%Y-%m-%d %H:%M:%S UTC")

echo "" >> README.md
echo "## Vowel Frequency Analysis" >> README.md
echo "Contributor: $GITHUB_USER" >> README.md
echo "Timestamp: $TIMESTAMP" >> README.md
echo "Vowel frequencies: $FREQ_RESULT" >> README.md

echo "README.md updated successfully!"
