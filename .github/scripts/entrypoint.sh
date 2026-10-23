
#!/bin/bash
set -e

cd /app

echo "Starting Frequency Analyzer..."

# Run the Python frequency analyzer
FREQ_RESULT=$(python3 /app/.github/scripts/frequency.py "${FILE:-/app/data.txt}")

# Update README with the results and contributor
bash /app/.github/scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"

echo "Process Completed!"
