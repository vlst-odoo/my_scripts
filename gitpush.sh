#!/bin/bash
git add .
echo "write a commit message"
read commit_message
git commit -m "$commit_message"
git push
