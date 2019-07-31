#!/bin/sh

set -e

echo "======= cURL Started at: $(date) ====="
curl --silent $URL
echo -e "\n========= cURL Ended at: $(date) ====="
