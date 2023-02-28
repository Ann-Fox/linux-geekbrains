timestamp=$(date +%s)

mkdir test-$timestamp
touch test-$timestamp/test.md
echo "## Hello" >> test-$timestamp/test.md

